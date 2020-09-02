package com.framework.automation.steps;
import com.framework.automation.pageobject.DynamicFormPage;
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

    @When("I click on {string} button in right footer")
    public void clickButtonOnRightFooter(String footerButtonName) {
        dynamicFormPage.getButtonsOnDynamicform(footerButtonName);
    }

    @When("I click on {string} action at the {string} modal")
    public void iClickOnActionAtTheModal(String actionName, String modalOverviewHeader) {
        dynamicFormPage.performClickOnModalActionButton(actionName, modalOverviewHeader);
    }

    @Then("^I see for \"([^\"]*)\" field value is \"([^\"]*)\" inside dynamic form$")
    public void fieldValueInsideDynamicForm(String fieldName, String fieldValue) {
        dynamicFormPage.assertFieldValueInsideDynamicForm(fieldName, fieldValue);
    }

    @Then("^I (see|do not see|softly see|softly do not see) \"([^\"]*)\" inside \"([^\"]*)\" at dynamic form$")
    public void iSeeInsideAtDynamicForm(String usage, String fieldName, String sectionName) {
        dynamicFormPage.assertFieldsDisplayedInExpectedSectionAtDynamicForm(usage, fieldName, sectionName);
    }

    @Then("^I (see|softly see) section as \"([^\"]*)\" inside dynamic form layout$")
    public void assertSectionDisplayedAInsideDynamicForm(String usage, String sectionName) {
        dynamicFormPage.assertSectionDisplayedInsideDynamicFormLayout(usage, sectionName);
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

    @Then("^I (see|softly do not see) comment box displayed as \"([^\"]*)\"$")
    public void iSeeCommentBoxDisplayedAs(String usage, String commentBoxType) {
        dynamicFormPage.assertCommentBoxDisplayTypeAtDynamicForms(usage, commentBoxType);
    }

    @Then("^I (see|softly see) \"([^\"]*)\" field inside \"([^\"]*)\" is (hidden|disabled)$")
    public void iSeeFieldInsideIs(String usage,String fieldName, String sectionName, String displayType) {
        dynamicFormPage.assertFieldInsideDynamicForm(usage, fieldName, sectionName, displayType.equalsIgnoreCase("hidden"));
    }

    @Then("^I see \"([^\"]*)\" field displayed with blank value at dynamic form$")
    public void iSeeFieldDisplayedWithBlankValueAtDynamicForm(String fieldName) {
        dynamicFormPage.assertFieldDisplayedWithBlankValueAtDynamicForm(fieldName);
    }

    @Then("I see {string} field is shown at position {string} in {string}")
    public void iSeeFieldIsShownAtPositionIn(String fieldName, String fieldPosition, String sectionName) {
        dynamicFormPage.assertSortOrderOfFieldAtDynamicFormLayout(fieldName,Integer.parseInt(fieldPosition), sectionName );
    }

    @Then("^I (see|softly see) radio button as \"([^\"]*)\" at \"([^\"]*)\" field in form layout$")
    public void iSeeRadioButtonAsAtFieldOnFormLayout(String usage, String radioButtonName, String fieldName) {
        dynamicFormPage.assertRadioButtonInFormLayout(usage, radioButtonName, fieldName);
    }

    @Then("I see {string} is displayed at detail page")
    public void iSeeIsDisplayedAtDetailPage(String displayMode) {
        dynamicFormPage.assertFormDisplayedInViewOrEditMode(displayMode);
    }

    @Then("^I see \"([^\"]*)\" action is not displayed at the \"([^\"]*)\" modal$")
    public void iSeeActionIsNotDisplayedAtTheModal(String actionName, String modalOverviewHeader) {
        dynamicFormPage.assertTopRightActionsAtModalWindowWithOverviewHeader(actionName,modalOverviewHeader);
    }
}
