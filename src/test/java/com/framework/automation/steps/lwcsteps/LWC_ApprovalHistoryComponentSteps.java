package com.framework.automation.steps.lwcsteps;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.Elements;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.Iterator;
import java.util.List;

public class LWC_ApprovalHistoryComponentSteps extends GovGrantsManager {
    Actions actions;

    @When("I click on {string} icon")
    public void iClickOnIcon(String arg0) {
        I.amPerforming().click().on(ByUsing.xpath("//lightning-icon[@title='" + arg0 + "']/lightning-primitive-icon//*[@data-key='down']"));
    }

    @Then("Approval history table get expanded and all available {string} or records get displayed.")
    public void approvalHistoryTableGetExpandedAndAllAvailableOrRecordsGetDisplayed(String record) {
        List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(By.xpath("//td[@data-label='" + record + "']"));
        if (allOptions.size() > 0) {
            int size = allOptions.size();
            Assert.assertEquals(size > 0, true);
        }
        Iterator<Elements> itr = allOptions.iterator();
        while (itr.hasNext()) {
            Elements recordName = itr.next();
            System.out.println("===== " + recordName.getText());
        }
    }

    @Then("I see columnName {string} is Displayed on {string} table")
    public void iSeeColumnNameIsDisplayedOnTable(String headerName, String tableName) {
        if (tableName.equals("Approval History")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//tr[@class='headerRow']//th[text()='"+ headerName +"']"));
        }
    }
    @When("I hover mouse over {string} column names.")
    public void iHoverMouseOverColumnNames(String columnName) {
        actions = new Actions(((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver());
        actions.moveToElement(I.amPerforming().getElementReference().of(ByUsing.xpath("//tr[@class='slds-line-height_reset']//th//div[@title='" + columnName + "']")));
    }

    @Then("style and font size of each value in each record is similar and as expected.")
    public void styleAndFontSizeOfEachValueInEachRecordIsSimilarAndAsExpected() {
        WebElement ele= I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']"));
        String fontSize = ele.getCssValue("font-size");
        System.out.println("font Size is:"+fontSize);
    }

    @Then("I see the font size of {string} is {string} Approval History table")
    public void iSeeTheFontSizeOfIs(String record, String ExpectedfontSize) {
        if(record.equals("stepName")){
           String  actualFontSize =I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']")).getCssValue("font-size");
           Assert.assertEquals(actualFontSize, ExpectedfontSize);
        } else if (record.equals("Overall Status")) {
            String  actualFontSize =I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='Approved']")).getCssValue("font-size");
            Assert.assertEquals(actualFontSize, ExpectedfontSize);
        }else {
            String  actualFontSize =I.amPerforming().getElementReference().of(ByUsing.xpath("(//td[@data-label='"+ record +"'])[1]")).getCssValue("font-size");
            Assert.assertEquals(actualFontSize, ExpectedfontSize);
        }
    }

    @Then("I see {string} arrow is displayed on {string} table expanded & not shrinked")
    public void iSeeArrowIsDisplayedOnTable(String arrow, String tableTitle) {
        boolean ArrowDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']/lightning-primitive-icon//*[@data-key='" + arrow + "']"));
        Assert.assertTrue(ArrowDisplayed);
    }

    @Then("alignment of each column data is to the left side")
    public void alignmentOfEachColumnDataIsToTheLeftSide() {
       int leftAllignment= I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']")).getLocation().x;
        System.out.println("leftAllignment is:"+leftAllignment);
        int leftAllignment1= I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='Approved']")).getLocation().x;
        System.out.println("leftAllignment is:"+leftAllignment1);
    }

    @Then("I see {string} massage under Approval History")
    public void iSeeMassageUnderApprovalHistory(String massage) {
        boolean massageDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//gnt-approval-history//descendant::td[text()='"+ massage +"']"));
        Assert.assertTrue(massageDisplayed);
    }

    @Then("I see {string} and comments is changed {string} in Approval history table")
    public void iSeeAndCommentsInApprovalHistoryTable(String step, String comments) {
        boolean statusDisplyed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='"+ step +"']//parent::tr//following-sibling::tr//td/div[text()='"+ comments +"']"));
        Assert.assertTrue(statusDisplyed);
    }

    @Then("I see step {string} and Comments column {string} and status {string} displayed for Owner")
    public void iSeeStepAndCommentsColumnAndStatusDisplayedForOwner(String step, String comments, String status) {
        boolean statusDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='"+ step +"']//parent::tr//following-sibling::tr//td/div[text()='"+ comments +"']//parent::td//following-sibling::td//div[text()='"+ status +"']"));
        Assert.assertTrue(statusDisplayed);
    }

    @Then("I see Overall Status is {string} and color background color is {string}")
    public void iSeeOverallStatusIsAndColorBackgroundColorIs(String status, String color) {
        if (color.equals("Mint Green")) {
            WebElement Element = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='" + status +"']"));
            String  backGroundColor=  Element.getCssValue("background-color");
            System.out.println("backGroundColor green :"+backGroundColor);
            Assert.assertEquals(backGroundColor, "rgba(163, 255, 185, 1)");
        } else if (color.equals("light red")) {
            WebElement Element = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='" + status +"']"));
            String  backGroundColor=  Element.getCssValue("background-color");
            System.out.println("backGroundColor red :"+backGroundColor);
            Assert.assertEquals(backGroundColor, "gba(241, 135, 135, 1)");
        }
    }
}
