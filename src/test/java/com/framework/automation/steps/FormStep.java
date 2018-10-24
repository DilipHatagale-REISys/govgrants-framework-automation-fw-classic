package com.framework.automation.steps;

import com.automation.rei.controller.Controller;
import com.automation.rei.handlers.GovGrantsHandler;
import com.automation.rei.handlers.Handlers;
import com.framework.automation.pageobject.FormPage;

import cucumber.api.java.en.Then;

public class FormStep {
    FormPage formPage;

    public FormStep(Controller controller, Handlers handler, GovGrantsHandler govgrants) {
        formPage = new FormPage(controller, handler, govgrants);
    }

    @Then("^I see Business Form section is not displayed$")
    public void assertBusinessFormSection() {
        formPage.assertBusinessFormVisibility();
    }

    @Then("^I see \"([^\"]*)\" action item is not displayed inside business form$")
    public void assertPreviewActionItem(String Item) {
        formPage.assertPreviewActionVisibility(Item);
    }

    @Then("^I do not see \"([^\"]*)\" on page \"([^\"]*)\" of \"([^\"]*)\" pdf file$")
    public void assertTExtNotDisplayed(String text, String pageNumber, String fileName) {
        formPage.assertTextNotDisplayedInPDF(text, Integer.parseInt(pageNumber), fileName);
    }
}
