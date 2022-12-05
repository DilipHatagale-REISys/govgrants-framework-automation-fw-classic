package com.lwcframework.automation.lwcsteps;

import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class SendEmailSteps {

    @When("^I upload attachment \"([^\"]*)\" in send email LWC modal$")
    public void i_upload_attachment_something_in_send_email_lwc_modal(String attachmentName) throws Throwable {
        By attachmentChooseFilePath = By.xpath("//div[@class='custom-upload']//input[@type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }
    @And("^I see the File present in Modal$")
    public void i_see_the_file_present_in_modal() throws Throwable {
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='slds-cell-wrap']"));
        WebElement uploadedfiles = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-cell-wrap']"));
        Assert.assertTrue(uploadedfiles.isDisplayed());
    }
    @Then("^I see the \"([^\"]*)\" displayed in modal$")
    public void i_see_the_something_displayed_in_modal(String strArg1) throws Throwable {
        WebElement uploadedfilesSection = I.amPerforming().getElementReference().of(By.xpath("//span[text()='"+strArg1+"'] | //span[text()='"+strArg1+"']"));
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
        WebElement ActionButton = I.amPerforming().getElementReference().of(By.xpath("//button[@class='slds-button slds-button_neutral' and text()='"+strArg1+"']"));
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
        WebElement downloadButton = I.amPerforming().getElementReference().of(By.xpath("//span[text()='"+ Download +"']"));
        Assert.assertTrue(downloadButton.isDisplayed());
    }
    @Then("^I see the \"([^\"]*)\" icon at \"([^\"]*)\" modal under Library$")
    public void i_see_the_something_icon_at_something_modal_under_library(String icon, String modalTitle) throws Throwable {
        WebElement X_icon = I.amPerforming().getElementReference().of(ByUsing.xpath("//p[text()='" + modalTitle + "']/ancestor::div[(@aria-hidden)]//*[contains(normalize-space(text()),'" + icon + "')]"));
        Assert.assertTrue(X_icon.isDisplayed());
    }
    @Then("^I can see the \"([^\"]*)\" displayed in modal$")
    public void i_can_see_the_something_displayed_in_modal(String progressbar) throws Throwable {
        WebElement progerssBar = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@role='"+ progressbar +"']"));
        Assert.assertTrue(progerssBar.isDisplayed());
    }
    @Then("^I can see  attach the \"([^\"]*)\"  file format in the attachment section$")
    public void i_can_see_attach_the_something_file_format_in_the_attachment_section(String fileName) throws Throwable {
        WebElement fileFormat = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[contains(text(),'"+fileName+"')]"));
        Assert.assertTrue(fileFormat.isDisplayed());
    }
    @Then("^I able to click on \"([^\"]*)\" button on send email modal$")
    public void i_able_to_click_on_something_button_on_send_email_modal(String strArg1) throws Throwable {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//span[text()='"+strArg1+"']")));
    }
    @Then("^I can see the \"([^\"]*)\" icon at \"([^\"]*)\" modal under Library$")
    public void i_can_see_the_something_icon_at_something_modal_under_library(String icon, String modalTitle) throws Throwable {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed("//p[text()='" + modalTitle + "']/ancestor::div[(@aria-hidden)]//*[contains(normalize-space(text()),'" + icon + "')]"));
    }

    @Then("I can see download button in front of {string} file on send email reply modal")
    public void iCanSeeADownloadActionButtonInFrontOfFileOnSendEmailReplyModal(String FileName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(text(),'"+FileName+"')]/parent::td/following-sibling::td")));
    }

    @Then("I can see download button in front of {string} file on send email reply modal is Enabled")
    public void iCanSeeDownloadButtonInFrontOfFileOnSendEmailReplyModalIsEnabled(String FileName) {
        Assert.assertTrue(I.amPerforming().checkToSee().isEnabled(ByUsing.xpath("//div[contains(text(),'"+FileName+"')]/parent::td/following-sibling::td")));
    }
    @When("I click on {string} button in send email modal in Send email LWC modal")
    public void iClickOnButtonInSendEmailModalInSendEmailLWCModal(String buttonName) {
        // I.amPerforming().click().on(ByUsing.xpath(""));
        I.amPerforming().click().on(ByUsing.xpath("//button[@title='"+buttonName+"']"));
    }
    @Then("I can see  Below choose file field {string} message is displayed in the RED color")
    public void iCanSeeBelowChooseFileFieldMessageIsDisplayedInTheREDColor(String massage) {
        WebElement massageInRedColor = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-form-element']/following-sibling::div[@class='slds-text-color_error' and contains(text(),'"+massage+"')]"));
    }
    @When("I fill the details in field To {string} CC {string} Subject {string} in send email LWC")
    public void iFillTheDetailsInFieldToCCSubjectInSendEmailLWC(String Tostr, String CCstr, String Subjectstr) {
        WebElement To = I.amPerforming().getElementReference().of(By.xpath("//input[@id='toExt-1'] | (//input[@ng-if=\"renderType=='Edit'\"])[1] | //input[@id='to-1']"));
        I.amPerforming().textInput().toClear(To);
        I.amPerforming().textInput().in(To, Tostr);
        WebElement CC = I.amPerforming().getElementReference().of(By.xpath("//input[@id='ccExt-1'] | //input[@ng-model='searchItem.ccValue'] | //input[@id='cc-1']"));
        I.amPerforming().textInput().toClear(CC);
        I.amPerforming().textInput().in(CC, CCstr);
        WebElement subject = I.amPerforming().getElementReference().of(By.xpath("//input[@id='subject-1'] | //input[@ng-model='email.subject'] | //input[@id='subject-1']"));
        I.amPerforming().textInput().toClear(subject);
        I.amPerforming().textInput().in(subject, Subjectstr);
    }
    @Then("I can see the Progress bar file Size {string} displayed in modal")
    public void iCanSeeTheProgressBarFileSizeDisplayedInModal(String sizeOfFile) {
        Assert.assertTrue(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='slds-text-align_center']/child::b[contains(text(),'"+sizeOfFile+"')]")));
    }
    @Then("I can click on {string} Action Button in front of {string} file")
    public void iCanClickActionButtonInFrontOfFile(String icon, String filename) {
        I.amPerforming().click().on(ByUsing.xpath("//div[contains(text(),'"+filename+"')]/parent::td/following-sibling::td/lightning-button/button[contains(text(),'"+icon+"')]"));
    }
}
