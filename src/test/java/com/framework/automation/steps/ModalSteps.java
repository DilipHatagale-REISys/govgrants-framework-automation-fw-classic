package com.framework.automation.steps;

import com.framework.automation.pageobject.FlexTablePage;
import com.framework.automation.pageobject.FrameworkCookiesPage;
import com.framework.automation.pageobject.ModalPage;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.data.Index;

public class ModalSteps {
    ModalPage modalPage;

    public ModalSteps() {
        modalPage = new ModalPage();
    }

    @And("^I click on search icon field \"([^\"]*)\" in modal$")
    public void iClickOnSearchIconField(String fieldName) {
        modalPage.clickOnSearchIconInModal(fieldName);
    }


    @Then("^I (see|do not see) \"([^\"]*)\" field contains \"([^\"]*)\" value$")
    public void iSeeFieldContains(String usage, String fieldName, String value) {
        modalPage.validateFieldAndValueAfterModalEnterValue(usage, fieldName, value);
    }

    @Then("^I (see|do not see) Required behavior under field \"([^\"]*)\" with star mark on modal$")
    public void iSeeRequiredBehaviorUnderFieldWithMarkOnModal(String usage, String fieldAPI) {
        modalPage.validateStarMarkForRequiredBehavior(usage, fieldAPI);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" is displayed at position \"([^\"]*)\" inside table table name \"([^\"]*)\" in modal$")
    public void iSeeIsDisplayedAtPositionInsideTableTableNameInModal(String usage, String fieldAPI, String index, String tableName) {
        modalPage.sequenceOfFieldDisplayedInModal(usage, fieldAPI, index, tableName);
    }

    @When("I hovering mouse on i icon for field \"([^\"]*)\" inside modal$")
    public void iHoveringMouseOnIIconForFieldInsideModal(String fieldName) {
        I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("//div[@id='" + fieldName + "']//span[@class='fa fa-info helpIcon'] | //*[text()='" + fieldName + "']/parent::span//a//span[@class='fa fa-info helpIcon']"));
    }

    @Then("^I (see|do not see) \"([^\"]*)\" value column Number Of Personnel inside table id \"([^\"]*)\"$")
    public void iSeeValueColumnNumberOfPersonnelInsideTableId(String usage, String value, String tableId) {
        modalPage.assertIfValueIsDisplayedInsideTableInEnhancedTable(usage, value, tableId);
    }

    @Then("^I (see|do not see) \"([^\"]*)\" action with title \"([^\"]*)\" in table id \"([^\"]*)\"$")
    public void iSeeActionWithTitleInTableId(String usage, String action, String titlename, String tableid) {
        modalPage.actionDisplayedOrNotInGivenTableWithTitle(usage, action, titlename, tableid);
    }
}
