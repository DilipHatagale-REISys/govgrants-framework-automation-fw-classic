package com.framework.automation.steps;

import com.framework.automation.pageobject.SendEmail_Test8Page;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
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

}
