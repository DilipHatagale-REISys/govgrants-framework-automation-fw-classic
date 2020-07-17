package com.framework.automation.steps;

import com.framework.automation.pageobject.DynamicFormPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DynamicFormSteps {
    DynamicFormPage dynamicFormPage;

    public DynamicFormSteps() {
        dynamicFormPage = new DynamicFormPage();
    }

    @When("^I hovering mouse on help text icon at \"([^\"]*)\" inside dynamic form$")
    public void hoveringMouseOnHelpTextIconInsideDynamicForm(String sectionName) {
        dynamicFormPage.getHelpTextAtSectionInsideDynamicForm(sectionName);
    }

    @Then("^I see for \"([^\"]*)\" field value is \"([^\"]*)\" inside dynamic form$")
    public void fieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        dynamicFormPage.assertFieldValueInsideDynamicForm(fieldName, fieldValue);
    }

    @Then("^I see \"([^\"]*)\" inside \"([^\"]*)\" at dynamic form$")
    public void iSeeInsideAtDynamicForm(String fieldName, String sectionName) {
        dynamicFormPage.assertFieldsDisplayedInExpectedSectionAtDynamicForm(fieldName, sectionName);
    }

    @Then("^I see section as \"([^\"]*)\" inside dynamic form layout$")
    public void assertSectionDisplayedAInsideDynamicForm(String sectionName) {
        dynamicFormPage.assertSectionDisplayedInsideDynamicFormLayout(sectionName);
    }

    @Then("I see the instruction text is as follows :")
    public void verifyCompleteInstructionText(String expectedInstructionText) {
        dynamicFormPage.assertTextMatches(expectedInstructionText);
    }

    @Then("^I see section column is \"([^\"]*)\" aligned$")
    public void iSeeSectionColumnIsAligned(String columnAlignment) {
        dynamicFormPage.assertAlignmentOfSectionColumn(columnAlignment);
    }

    @Then("^I see message \"([^\"]*)\" below \"([^\"]*)\" field in form detail$")
    public void iSeeTheMessageInTheFormDetails(String message, String fieldName) {
        dynamicFormPage.assertFieldErrorMessageInTheFormDetails(message, fieldName);
    }
}
