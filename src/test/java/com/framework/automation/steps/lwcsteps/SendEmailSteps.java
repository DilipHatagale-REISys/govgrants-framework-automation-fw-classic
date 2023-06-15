package com.framework.automation.steps.lwcsteps;

import com.testingblaze.actionsfactory.api.ByUsing;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.Elements;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import com.framework.automation.pageobject.ApprovalHistoryComponentPage;
import org.openqa.selenium.NoSuchElementException;

import java.util.Iterator;
import java.util.List;

public class SendEmailSteps extends GovGrantsManager {
    Actions actions;
    ApprovalHistoryComponentPage approvalHistoryComponentPage;

    @When("^I upload attachment \"([^\"]*)\" in send email LWC modal$")
    public void i_upload_attachment_something_in_send_email_lwc_modal(String attachmentName) throws Throwable {
        By attachmentChooseFilePath = By.xpath("//div[@class='custom-upload']//input[@type='file'] | //div[@class='slds-file-selector slds-file-selector_files']//lightning-primitive-file-droppable-zone//slot//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    @And("^I see the File present in Modal$")
    public void i_see_the_file_present_in_modal() throws Throwable {
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='slds-cell-wrap']"));
        WebElement uploadedfiles = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-cell-wrap']"));
        Assert.assertTrue(uploadedfiles.isDisplayed());
    }

    @Then("I see the {string} displayed in modal")
    public void i_see_the_displayed_in_modal(String UploadFiles) {
        WebElement uploadedfilesSection = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-file-selector slds-file-selector_files']//child::span[contains(text(),'" + UploadFiles + "')]"));
        Assert.assertTrue(uploadedfilesSection.isDisplayed());
    }

    @And("^I click on X button in modal$")
    public void i_click_on_x_button_in_modal() throws Throwable {
        I.amPerforming().click().on(ByUsing.xpath("//button[@class='slds-button slds-button_neutral']"));
    }

    @Then("^I See the file is uploaded in Send Email LWC Modal$")
    public void i_see_the_file_is_uploaded_in_send_email_lwc_modal() throws Throwable {
        WebElement uploadedFile = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-cell-wrap']"));
        Assert.assertTrue(uploadedFile.isDisplayed());
    }

    @Then("^I can See the \"([^\"]*)\" Action Button on Email Modal$")
    public void i_can_see_the_something_action_button_on_email_modal(String strArg1) throws Throwable {
        WebElement ActionButton = I.amPerforming().getElementReference().of(By.xpath("//button[@class='slds-button slds-button_neutral' and text()='" + strArg1 + "']"));
        Assert.assertTrue(ActionButton.isDisplayed());
    }

    @And("^I \"([^\"]*)\" in Send Email LWC Modal1$")
    public void i_something_in_send_email_lwc_modal1(String attachmentName) throws Throwable {
        By attachmentChooseFilePath = By.xpath("//span[text()='Upload Files']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    @Then("^I see attachment \"([^\"]*)\" is present in lwc send email modal$")
    public void i_see_attachment_something_is_present_in_lwc_send_email_modal(String attachmentName) throws Throwable {
        WebElement displayed = I.amPerforming().getElementReference().of(By.xpath("//tbody//tr//td//div[contains(text(),'" + attachmentName + "')] | //a[text()='" + attachmentName + "']"));
        Assert.assertTrue(displayed.isDisplayed());
    }

    @Then("^I see The Download Action Button in LWC Send Email Modal$")
    public void i_see_the_download_action_button_in_lwc_send_email_modal() throws Throwable {
        WebElement downloadButton = I.amPerforming().getElementReference().of(By.cssSelector("td[style='border: 1px solid rgb(221, 221, 221); padding: 5px;']>a"));
        Assert.assertTrue(downloadButton.isDisplayed());
    }

    @Then("^I see The \"([^\"]*)\" Action Button in Reply Send Email Modal$")
    public void i_see_the_something_action_button_in_reply_send_email_modal(String Download) throws Throwable {
        WebElement downloadButton = I.amPerforming().getElementReference().of(By.xpath("//span[text()='" + Download + "']"));
        Assert.assertTrue(downloadButton.isDisplayed());
    }

    @Then("^I see the \"([^\"]*)\" icon at \"([^\"]*)\" modal under Library$")
    public void i_see_the_something_icon_at_something_modal_under_library(String icon, String modalTitle) throws Throwable {
        WebElement X_icon = I.amPerforming().getElementReference().of(ByUsing.xpath("//p[text()='" + modalTitle + "']/ancestor::div[(@aria-hidden)]//*[contains(normalize-space(text()),'" + icon + "')]"));
        Assert.assertTrue(X_icon.isDisplayed());
    }

    @Then("^I can see the \"([^\"]*)\" displayed in modal$")
    public void i_can_see_the_something_displayed_in_modal(String progressbar) throws Throwable {
        WebElement progerssBar = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@role='" + progressbar + "']"));
        Assert.assertTrue(progerssBar.isDisplayed());
    }

    @Then("^I can see attach the \"([^\"]*)\" file format in the attachment section$")
    public void i_can_see_attach_the_something_file_format_in_the_attachment_section(String fileName) throws Throwable {
        WebElement fileFormat = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(text(),'" + fileName + "')] | //*[text()='Attachments']/ancestor::div[@class='slds-text-color_inverse slds-p-around_x-small header panel-heading']/following-sibling::div/descendant::a[text()='" + fileName + "'] | //strong[text()='File']/ancestor::tr//td[text()='" + fileName + "'] | //a[contains(text(),'" + fileName + "')]"));
        Assert.assertTrue(fileFormat.isDisplayed());
    }

    @Then("^I able to click on \"([^\"]*)\" button on send email modal$")
    public void i_able_to_click_on_something_button_on_send_email_modal(String strArg1) throws Throwable {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//span[text()='" + strArg1 + "']")));
    }

    @Then("^I can see the \"([^\"]*)\" icon at \"([^\"]*)\" modal under Library$")
    public void i_can_see_the_something_icon_at_something_modal_under_library(String icon, String modalTitle) throws Throwable {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed("//p[text()='" + modalTitle + "']/ancestor::div[(@aria-hidden)]//*[contains(normalize-space(text()),'" + icon + "')]"));
    }

    @Then("I can see download button in front of {string} file on send email reply modal")
    public void iCanSeeADownloadActionButtonInFrontOfFileOnSendEmailReplyModal(String FileName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(text(),'" + FileName + "')]/parent::td/following-sibling::td")));
    }

    @Then("I can see download button in front of {string} file on send email reply modal is Enabled")
    public void iCanSeeDownloadButtonInFrontOfFileOnSendEmailReplyModalIsEnabled(String FileName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[contains(text(),'" + FileName + "')]/parent::td/following-sibling::td")));
    }

    @When("I click on {string} button in send email modal in Send email LWC modal")
    public void iClickOnButtonInSendEmailModalInSendEmailLWCModal(String buttonName) {
        I.amPerforming().click().on(ByUsing.xpath("//button[@title='" + buttonName + "']"));
    }

    @Then("I can see  Below choose file field {string} message is displayed in the RED color")
    public void iCanSeeBelowChooseFileFieldMessageIsDisplayedInTheREDColor(String massage) {
        WebElement massageInRedColor = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-form-element']/following-sibling::div[@class='slds-text-color_error' and contains(text(),'" + massage + "')]"));
    }

//    @When("I fill the details in field To {string} CC {string} Subject {string} in send email LWC")
//    public void iFillTheDetailsInFieldToCCSubjectInSendEmailLWC(String Tostr, String CCstr, String Subjectstr) {
//        WebElement subject = I.amPerforming().getElementReference().of(By.xpath("//input[@id='subject-1'] | //input[@ng-model='email.subject'] | //input[@id='subject-1']"));
//        I.amPerforming().textInput().toClear(subject);
//        I.amPerforming().textInput().in(subject, Subjectstr);
//        WebElement To = I.amPerforming().getElementReference().of(By.xpath("//input[@id='toExt-1'] | (//input[@ng-if=\"renderType=='Edit'\"])[1] | //input[@id='to-1']"));
//        I.amPerforming().textInput().toClear(To);
//        I.amPerforming().textInput().in(To, Tostr);
//        WebElement CC = I.amPerforming().getElementReference().of(By.xpath("//input[@id='ccExt-1'] | //input[@ng-model='searchItem.ccValue'] | //input[@id='cc-1']"));
//        I.amPerforming().textInput().toClear(CC);
//        I.amPerforming().textInput().in(CC, CCstr);
//    }

    @Then("I can see the Progress bar file Size {string} displayed in modal")
    public void iCanSeeTheProgressBarFileSizeDisplayedInModal(String sizeOfFile) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-text-align_center']/child::b[contains(text(),'" + sizeOfFile + "')]")));
    }

    @Then("I click on {string} Action Button in front of {string} file")
    public void iCanClickActionButtonInFrontOfFile(String icon, String filename) {
        if (icon.equals("× ")) {
            I.amPerforming().click().on(ByUsing.xpath("//div[contains(text(),'" + filename + "')]/parent::td/following-sibling::td/lightning-button/button[contains(text(),'" + icon + "')]"));
        } else if (icon.equals("× button on Reply modal")) {
            I.amPerforming().click().on(ByUsing.xpath("//td[contains(text(),'" + filename + "')]//following-sibling::td/a[@ng-click='removeAttachedItem(this)']"));
        } else if (icon.equals("×")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//div[contains(text(),'" + filename + "')]/parent::td/following-sibling::td/lightning-button/button[contains(text(),'" + icon + "')]"), true);
        }

    }

    @And("I click on {string} button in Email LWC Modal")
    public void iClickOnButtonInEmailLWCModal(String buttonName) {
        if (buttonName.equalsIgnoreCase("Upload Files")) {
            try {
                I.amPerforming().click().on(ByUsing.xpath("//div[@class='slds-file-selector slds-file-selector_files']//child::span[contains(text(),'" + buttonName + "')]"));
            } catch (Exception e) {
                I.amPerforming().click().withJavaScript(ByUsing.xpath("//div[@class='slds-file-selector slds-file-selector_files']//child::span[contains(text(),'" + buttonName + "')]"));
            }
        } else {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//div[@id='modal-content-id-1-1']//child::button[@title='" + buttonName + "']"));
        }
    }

    @Then("I can see Upload file & drop files actions on send email reply modal are enabled")
    public void iCanSeeUploadFileDropFilesActionsOnSendEmailReplyModalAreEnabled() {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[@class='custom-upload']//input[@type='file']")));
    }

    @And("I click on top right button {string} in tableName {string}")
    public void iClickOnTopRightButtonInTableName(String button, String tableName) {
        if (tableName.contains("Attachments") || tableName.equals("Notes")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div/following-sibling::lightning-button//button[@title='" + button + "'] | //div[@class='NotesAttach']//div[@ng-controller='customNotesAppCtrl']/div//div/button[@type='button' and @title='"+ button +"'] | " +
                    "//div[@class='panel panel-default ng-scope']/div//button[contains(@ng-click,'"+ tableName +"') and @title='"+ button +"'] | " +
                    "//div[@class='panel panel-default ng-scope']/div/div//button[contains(@title,'"+ tableName +"')]//*[text()='"+ button +"']"));
        } else if (tableName.contains("Contacts")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//*[text()='" + tableName + "']/parent::div//following-sibling::div//div//div//div/lightning-button//button[@title='" + button + "']"));
        } else if (tableName.contains("Associate table")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@title='" + button + "' and @class='secondaryBtn ng-scope ng-binding']"));
        }
    }

    @Then("I see {string} field under the Send Email LWC modal")
    public void iSeeFieldUnderTheSendEmailLWCModal(String fieldName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//strong[text()='" + fieldName + "']/ancestor::div[@class='slds-col slds-size_5-of-6']//div//div//div//input")));
    }

    @Then("I see and check {string} field dropdown is displayed with {string} value")
    public void iSeeFieldDropdownIsDisplayedWithValue(String field, String value) {
        if (field.equals("To")) {
            I.amPerforming().click().on(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//div[@class='slds-form-element__control']"));
        } else if (field.equals("Cc")) {
            I.amPerforming().click().on(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//div[@class='slds-form-element__control']"));
        }
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//ul//li//div//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value)) {
                opt.isDisplayed();
                opt.isEnabled();
                opt.click();
            }
        }
    }

    @And("I click on {string} field dropdown")
    public void iClickOnFieldDropdown(String arg0) {
    }

    @Then("I see User should be able to checked the {string} & {string} picklist from {string}  field")
    public void iSeeUserShouldBeAbleToCheckedThePicklistFromField(String value1, String value2, String field) {
        if (field.equals("To")) {
            I.amPerforming().click().on(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//div[@class='slds-form-element__control']"));
        } else if (field.equals("Cc")) {
            I.amPerforming().click().on(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//div[@class='slds-form-element__control']"));
        }
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//ul//li//div//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value1)) {
                opt.isDisplayed();
                opt.click();
            }
            if (opt.getText().equals(value2)) {
                opt.isDisplayed();
                opt.click();
            }
        }
    }

    @Then("I see checkbox is enabled for {string} and {string} picklist from {string} field")
    public void iSeeCheckboxIsEnabledForAndPicklistFromField(String value1, String value2, String field) {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//ul//li//div//span[@title='" + value1 + "']/parent::span/preceding-sibling::span/lightning-icon/lightning-primitive-icon")));
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//ul//li//div//span[@title='" + value2 + "']/parent::span/preceding-sibling::span/lightning-icon/lightning-primitive-icon")));
    }

    @Then("I see the {string} field on the send email modal")
    public void iSeeTheFieldOnTheSendEmailModal(String field) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//strong[text()='" + field + "']/parent::label//following-sibling::div//input[@id='subject-1'] | //strong[text()='" + field + "'] | //button[@title='" + field + "'] | //div[@class='slds-modal__content']/descendant::strong[text()='" + field + "']")));
    }

    @Then("I see modal contain {string} is displayed")
    public void iSeeModalContainIsDisplayed(String field) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='header']/descendant::span[text()='" + field + "' and @class='slds-text-heading_small slds-text-title_bold slds-m-horizontal_xx-small']")));

    }

    @Then("I see the {string} and is enabled")
    public void iSeeTheAndIsEnabled(String checkbox) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//th[@data-label='Title' and @scope='row']/preceding-sibling::td/descendant::input[@type='" + checkbox + "']")));
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//th[@data-label='Title' and @scope='row']/preceding-sibling::td/descendant::input[@type='" + checkbox + "']")));
    }

    @And("I see the {string} and is enabled and I click on {string} checkbox")
    public void iSeeTheAndIsEnabledAndIClickOnCheckbox(String checkbox, String indexNo) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("(//th[@data-label='Title' and @scope='row']/preceding-sibling::td/descendant::input[@type='" + checkbox + "'])[" + indexNo + "]"));
    }

    @Then("I see the {string} is selected as per row no {string} checkbox")
    public void iSeeTheIsSelectedAsPerRowNo(String checkbox, String indexNo) {
        I.amPerforming().checkToSee().isSelected(ByUsing.xpath("(//th[@data-label='Title' and @scope='row']/preceding-sibling::td/descendant::input[@type='" + checkbox + "'])[" + indexNo + "]"));
    }

    @Then("I see {string} modal is displayed")
    public void iSeeModalIsDisplayed(String field) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@id='CommunicationHistorymodalDivCloseIcon']/following-sibling::p[text()='" + field + "']")));
    }

    @Then("I see {string} message is displayed on send email modal")
    public void iSeeMessageIsDisplayedOnSendEmailModal(String message) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-notify slds-notify_alert slds-alert-success']/child::h2[text()='" + message + "']")));

    }

    @When("I click on {string} icon at {string} modal after Email Sent Successfully")
    public void iClickOnIconAtModalAfterEmailSentSuccessfully(String icon, String modal) {
        if (modal.contains("Send Email")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@id='CommunicationHistorymodalDivCloseIcon' and text()='" + icon + "'] | //div[@class='modal-dialog ui-draggable']//div[@class='modal-content ui-draggable-handle']//button[@aria-label='Close' and contains(text(),'" + icon + "')]"));
        } else if (modal.equalsIgnoreCase("Reply")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@id='CommunicationHistorymodalDivCloseIcon' and text()='" + icon + "']"));
        } else if (modal.contains("Add Files")) {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[text()='" + icon + "']"));
        } else {
            I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[text()='" + icon + "']"));
        }
    }


    @And("I close LWC modal window")
    public void iCloseLWCModalWindow() {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[text()='× '] | //button[@id='CommunicationHistorymodalDivCloseIcon' and text()='× ']"));
    }

    @Then("I see {string} is displayed under {string} and enabled")
    public void iSeeIsDisplayedUnderAndEnabled(String buttonName, String bodycontent) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + bodycontent + "']/ancestor::div[@class='slds-form-element slds-m-top_small']/descendant::button[@title='" + buttonName + "']")));
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//*[text()='" + bodycontent + "']/ancestor::div[@class='slds-form-element slds-m-top_small']/descendant::button[@title='" + buttonName + "']")));
    }

    @Then("I hover mouse on on {string} section")
    public void iHoverMouseOnOnSection(String symbol) {
        if (symbol.equalsIgnoreCase("Attachment symbol")) {
            WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-col slds-size_12-of-12 slds-float_left slds-var-p-right_x-small slds-var-p-bottom_x-small bold-text slds-m-top_x-small slds-m-bottom_x-small']//div//div//div//button[@type='button']"));
            String ele1 = ele.getText();
            System.out.println("ele1 :" + ele1);
            actions = new Actions(((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver());
            actions.moveToElement(ele).build().perform();
        }
    }

    @Then("I see {string} is displayed")
    public void iSeeIsDisplayed(String helpText) {
        if (helpText.equalsIgnoreCase("File Attachment")) {
            WebElement textmsg = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-popover__body']"));
            String msg = textmsg.getText();
            System.out.println("printed msg :" + msg);
            Assert.assertTrue(helpText, true);
        }
    }

    @Then("I see The {string} field in {string} color")
    public void iSeeTheFieldInColor(String msg, String color) {
        WebElement textElement = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-form-element']//following-sibling::div[@class='slds-text-color_error']"));
        if (textElement.isDisplayed()) {
            String textColor = textElement.getCssValue("color");
            Assert.assertEquals(textColor, "rgba(234, 0, 30, 1)");
        }
    }



    @Then("I can not see {string} file Send Email modal")
    public void iCanNotSeeFileSendEmailModal(String fileName) throws InterruptedException {
        boolean elementPresentOnWebPage = true;
        try {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(text(),'" + fileName + "')]"));
        } catch (NoSuchElementException e) {
            elementPresentOnWebPage = false;
        }
        Assert.assertFalse(elementPresentOnWebPage);
    }

    @Then("I can not see download button in front of {string} file on send email reply modal")
    public void iCanNotSeeDownloadButtonInFrontOfFileOnSendEmailReplyModal(String FileName) {
        boolean elementPresentOnWebPage = true;
        try {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(text(),'" + FileName + "')]/parent::td/following-sibling::td"));
        } catch (NoSuchElementException e) {
            elementPresentOnWebPage = false;
        }
        Assert.assertFalse(elementPresentOnWebPage);
    }

    @Then("I see Attachment section is displayed under {string} modal")
    public void iSeeAttachmentSectionIsDisplayedUnderModal(String modal) {
        if (modal.equals("Reply")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div//input[@id='fileselect'] | //div[@class='custom-upload']//input[@type='file']"));
        }
    }

    @Then("I see {string} value selected from dropdown")
    public void iSeeValueSelectedFromDropdown(String arg0) {
        WebElement ele1 = I.amPerforming().getElementReference().of(ByUsing.xpath("(//strong[text()='To']/ancestor::div[@class='slds-form']/descendant::*[@title='Internal'])[1]"));
        ele1.isDisplayed();
        boolean ExternalValue = ele1.isEnabled();
        Assert.assertTrue(ExternalValue);
    }

    @When("I click on {string} content inside {string} subheader on left panel")
    public void iClickOnContentInsideSubheaderOnLeftPanel(String subTask, String contentTitle) {
        I.amPerforming().click().on(ByUsing.xpath("//*[@title='" + contentTitle + "']//following-sibling::ul//li//ul//li//a[@title='" + subTask + "']"));
    }

    @Then("I see the text {string} inside Body")
    public void iSeeTheTextInsideBody(String desiredText) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[normalize-space(text())='" + desiredText + "']"), true);
    }

    @Then("I see text as {string} on View modal")
    public void iSeeTextAsOnViewModal(String textValue) {
        boolean texDisplayedOnViewModal = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div//div//span[@ng-bind-html='trustSrcHTML(email.body)']//text()[contains(.,'" + textValue + "')]"));
        Assert.assertTrue(texDisplayedOnViewModal);
    }

    @And("I enter the value {string} inside body content")
    public void iEnterTheValueInsideBodyContent(String textValue) {
        for (int i = 0; i <= 10; i++) {
            System.out.println("value of i :" + i);
            try {
                I.amPerforming().click().withJavaScript(ByUsing.xpath("//div[@class='slds-rich-text-editor slds-grid slds-grid_vertical slds-nowrap']/div/div"));
                I.amPerforming().textInput().in(ByUsing.xpath("//div[@class='slds-rich-text-editor slds-grid slds-grid_vertical slds-nowrap']/div/div/p"), textValue);
                break;
            } catch (Exception e) {
            }
        }
    }

    @And("I click on {string} field dropdown and select {string} and {string} value from dropdown")
    public void iClickOnFieldDropdownAndSelectAndValueFromDropdown(String field, String value1, String value2) {
        I.amPerforming().click().on(ByUsing.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//div[@class='slds-form-element__control']"));
        List<Elements> options = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//strong[text()='" + field + "']/parent::label/parent::div/preceding-sibling::div//div//ul//li//div//span[@class='slds-truncate']"));
        for (Elements opt : options) {
            if (opt.getText().equals(value1)) {
                opt.click();
            }
            if (opt.getText().equals(value2)) {
                opt.click();
            }
        }
    }

    @And("I select checkbox {string} inside Send Email LWC")
    public void iSelectCheckboxInsideSendEmailLWC(String filename) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//div/*[text()='" + filename + "']/ancestor::th/preceding::td[1]//input[@type='checkbox']"));
    }

    @And("I click on {string} inside Send Email LWC")
    public void iClickOnInsideSendEmailL(String buttonName) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//button[@title='" + buttonName + "']"));
    }

    @Then("I see {string} Action Button in front of {string} file")
    public void iSeeActionButtonInFrontOfFile(String button, String fileName) {
        boolean fileCloseButton = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + fileName + "']/parent::td/following::td//button[@class='slds-button slds-button_neutral' and text()='" + button + "']"));
        Assert.assertTrue(fileCloseButton);
    }

    @And("I hover mouse on text {string} inside Send Email LWC")
    public void iHoverMouseOnTextInsideSendEmailLWC(String value) {
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//strong[text()='" + value + "']/parent::label//button[@title='Help'] | //span[text()='" + value + "']/parent::div//button[@title='Help'] | //div/label[contains(text(),'" + value + "')]/span | //div[contains(text(),'" + value + "')]/child::span"));
        try {
            I.amPerforming().scroll().withMouseToElement(ele);
        } catch (Exception e) {
            JavascriptExecutor js = (JavascriptExecutor) ((InstanceRecording.getInstance(DeviceBucket.class)).getDriver());
            js.executeScript("arguments[0].scrollIntoView();", ele);
        }

    }

    @Then("I see help text {string} is displayed releted field inside Send Email LWC modal")
    public void iSeeHelpTextIsDisplayedReletedFieldInsideSendEmailLWCModal(String helpText) {
        boolean helpTextDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-primitive-bubble/div/div[text()='" + helpText + "'] | //span[@title='" + helpText + "']"));
        Assert.assertTrue(helpTextDisplayed);
    }

    @Then("Required to save field {string} is displayed with respect {string} field")
    public void requiredToSaveFieldIsDisplayedWithField(String symbol, String field) {
        boolean starField = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//strong[text()='" + field + "']/parent::label//abbr[@title='Required' and normalize-space(text()='" + symbol + "')]"));
        Assert.assertTrue(starField);
    }

    @And("I click on checkbox for {string} inside lwc modal")
    public void iClickOnCheckboxForInsideLwcModal(String field) {
        I.amPerforming().click().withJavaScript(ByUsing.xpath("//strong[text()='" + field + "']/ancestor::div/following::div[@class='slds-col slds-size_5-of-6 slds-m-top_xx-small']//input[@name='sendCopy']"));
    }

    @Then("I see checkbox is selected and Cc contain {string} email address")
    public void iSeeCheckboxIsSelectedAndCcContainEmailAddress(String emailAddress) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-formatted-text[text()='Cc']/parent::p/following::p/lightning-formatted-text[text()='" + emailAddress + "']"));
    }
}
