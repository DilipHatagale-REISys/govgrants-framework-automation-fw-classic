package com.framework.automation.steps;

import com.framework.automation.pageobject.SendEmail_Test8Page;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.awt.*;

public class SendEmail_Test8Steps {


    SendEmail_Test8Page sendEmail_Test8Page;

    public SendEmail_Test8Steps() {
        sendEmail_Test8Page = new SendEmail_Test8Page();
    }

    @Then("^I (see|do not see|softly see|softly do not see) help text \"([^\"]*)\" is displayed related field \"([^\"]*)\" inside Send Email$")
    public void iSeeHelpTextIsDisplayedRelatedFieldInsideSendEmail(String usage, String field, String helpText) {
        sendEmail_Test8Page.assertHelpTextIsDisplayedOrNotDisplayed(usage, field, helpText);
    }

    @And("I hover mouse on text {string} inside Send Email Modal")
    public void iHoverMouseOnTextInsideSendEmailModal(String helpText) {
        sendEmail_Test8Page.iHoverMouseInsideEmailModalText(helpText);
    }

    @And("I click on dropdown inside {string} field and Select {string} value")
    public void iClickOnDropdownInsideFieldAndSelectValue(String field, String dropdownValue) {
        sendEmail_Test8Page.clickOnSearchByDropDownAndSelectValue(field, dropdownValue);
    }

    @When("I fill the details in field To {string} CC {string} Subject {string} in send email LWC")
    public void iFillTheDetailsInFieldToCCSubjectInSendEmailLWC(String Tostr, String CCstr, String Subjectstr) {
        sendEmail_Test8Page.fillEmailDetailsToCcAndSubJect(Tostr, CCstr, Subjectstr);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" message is displayed on Send Email Modal")
    public void iSeeMessageIsDisplayedOnSendEmailModal(String usage, String successMessage) {
        sendEmail_Test8Page.assertIfMessageIsDisplayed(usage, successMessage);
    }

    @And("I click on {string} button inside Send Email modal")
    public void iClickOnButtonInsideSendEmailModal(String buttonName) {
        sendEmail_Test8Page.selectButtonInsideSendEmailModal(buttonName);
    }

    @When("I upload attachment \"([^\"]*)\" in Send Email Modal$")
    public void iUploadAttachmentInSendEmailModal(String attachmentName) {
        sendEmail_Test8Page.uploadFileFromSystem(attachmentName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" file is displayed in modal$")
    public void iSeeFileIsDisplayedInModal(String usage, String fileName) {
        sendEmail_Test8Page.assertIfFileIsDisplayedOrNot(usage, fileName);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" error massage in attachment section$")
    public void iSeeErrorMassageInAttachmentSection(String usage, String errorMassage) {
        sendEmail_Test8Page.assertErrorMessageDisplayedOrNot(usage, errorMassage);
    }

    @And("I click on X Action Button of \"([^\"]*)\" file$")
    public void iClickOnXActionButtonOfFile(String fileName) {
        sendEmail_Test8Page.clickOnFileButton(fileName);
    }


    @Then("^I (see|do not see) the text \"([^\"]*)\" in send email page$")
    public void iSeeTheTextInSendEmailPage(String usage, String displayedText) {
        sendEmail_Test8Page.assertTextDisplayedOrNot(usage, displayedText);
    }


    @And("I change style of all text to {string} inside CK editor")
    public void iChangeStyleOfAllTextToInsideCKEditor(String styleName) {
        sendEmail_Test8Page.selectAndClickAtIconToChangeTextFormattingInStyle(styleName);
    }

    @When("I close {string} modal by clicking on x top right button")
    public void iCloseModalByClickingOnXTopRightButton(String modalName) {
        sendEmail_Test8Page.clickOnXButtonOnModal(modalName);
    }

    @Then("I see text as {string} in reply email modal")
    public void iSeeTextAsInReplyEmailModal(String value) {
        sendEmail_Test8Page.assertFieldOnModal(value);
    }

    @And("I click on {string} button send email modal")
    public void iClickOnButtonSendEmailModal(String button) {
        sendEmail_Test8Page.clickOnSelectFilesButton(button);
    }

    @Then("I see checkbox for field \"([^\"]*)\" on modal is (not selected|selected)$")
    public void iSeeCheckboxForFieldOnModalIsSelected(String checkbox, String status) {
        sendEmail_Test8Page.asserCheckBoxFieldOnModalIsSelected(checkbox, status);
    }

    @Then("I see option {string} from field {string} is disabled")
    public void iSeeOptionFromListIsDisabled(String option, String field) {
        sendEmail_Test8Page.assertOptionFromListIsDisabled(option, field);
    }

    @And("I click on checkbox for field {string}")
    public void iClickOnCheckboxForField(String checkbox) {
        sendEmail_Test8Page.clickOnCheckBoxForField(checkbox);
    }
}
