package com.framework.automation.steps.lwcsteps;

import com.automation.rei.handlers.govgrants;
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
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.context.annotation.Description;

import java.text.SimpleDateFormat;
import java.util.Date;
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
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//th[@class='title']//div[text()='" + headerName + "']"), true);
        }
    }

    @When("I hover mouse over {string} column names.")
    public void iHoverMouseOverColumnNames(String columnName) {
        actions = new Actions(((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver());
        actions.moveToElement(I.amPerforming().getElementReference().of(ByUsing.xpath("//tr[@class='slds-line-height_reset']//th//div[@title='" + columnName + "']")));
    }

    @Then("style and font size of each value in each record is similar and as expected.")
    public void styleAndFontSizeOfEachValueInEachRecordIsSimilarAndAsExpected() {
        WebElement ele = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']"));
        String fontSize = ele.getCssValue("font-size");
        System.out.println("font Size is:" + fontSize);
    }

    @Then("I see the font size of {string} is {string} Approval History table")
    public void iSeeTheFontSizeOfIs(String record, String ExpectedfontSize) {
        if (record.equals("stepName")) {
            String actualFontSize = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']")).getCssValue("font-size");
            Assert.assertEquals(actualFontSize, ExpectedfontSize);
        } else if (record.equals("Overall Status")) {
            String actualFontSize = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='Approved']")).getCssValue("font-size");
            Assert.assertEquals(actualFontSize, ExpectedfontSize);
        } else {
            String actualFontSize = I.amPerforming().getElementReference().of(ByUsing.xpath("(//td[@data-label='" + record + "'])[1]")).getCssValue("font-size");
            Assert.assertEquals(actualFontSize, ExpectedfontSize);
        }
    }

    @Then("I see {string} arrow is displayed on {string} table expanded & not shrinked")
    public void iSeeArrowIsDisplayedOnTable(String arrow, String tableTitle) {
        boolean ArrowDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-icon[@title='" + tableTitle + "']//lightning-primitive-icon//*[@data-key='" + arrow + "']"));
        Assert.assertTrue(ArrowDisplayed);
    }

    @Then("I see {string} massage under Approval History")
    public void iSeeMassageUnderApprovalHistory(String massage) {
        boolean massageDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//gnt-approval-history//descendant::td[text()='" + massage + "']"));
        Assert.assertTrue(massageDisplayed);
    }

    @Then("I see {string} and comments is changed {string} in Approval history table")
    public void iSeeAndCommentsInApprovalHistoryTable(String step, String comments) {
        boolean statusDisplyed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='" + step + "']//parent::tr//following-sibling::tr//td/div[text()='" + comments + "']"));
        Assert.assertTrue(statusDisplyed);
    }

    @Then("I see step {string} and Comments column {string} and status {string} displayed for Owner")
    public void iSeeStepAndCommentsColumnAndStatusDisplayedForOwner(String step, String comments, String status) {
        boolean statusDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='" + step + "']//parent::tr//following-sibling::tr//td/div[text()='" + comments + "']//parent::td//following-sibling::td//div[text()='" + status + "']"));
        Assert.assertTrue(statusDisplayed);
    }

    @Then("I see Overall Status is {string} and color background color is {string}")
    public void iSeeOverallStatusIsAndColorBackgroundColorIs(String status, String color) {
        if (color.equals("Mint Green")) {
            WebElement Element = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='" + status + "']"));
            String backGroundColor = Element.getCssValue("background-color");
            System.out.println("backGroundColor green :" + backGroundColor);
            Assert.assertEquals(backGroundColor, "rgba(163, 255, 185, 1)");
        } else if (color.equals("light red")) {
            WebElement Element = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='" + status + "']"));
            String backGroundColor = Element.getCssValue("background-color");
            System.out.println("backGroundColor red :" + backGroundColor);
            Assert.assertEquals(backGroundColor, "rgba(241, 135, 135, 1)");
        } else if (color.equals("light yellow")) {
            WebElement Element = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='stepName']//following-sibling::td//div[text()='" + status + "']"));
            String backGroundColor = Element.getCssValue("background-color");
            System.out.println("backGroundColor yellow :" + backGroundColor);
            Assert.assertEquals(backGroundColor, "rgba(255, 218, 26, 1)");
        }
    }

    @Then("status changed {string} and {string} approver name is displayed {string}")
    public void statusChangedAndApproverNameIsDisplayed(String comments, String columnName, String value) {
        if (columnName.equals("Assigned To")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + comments + "']//parent::td//preceding-sibling::td[@data-label='" + columnName + "']//div[text()='" + value + "']"), true);
        } else if (columnName.equals("Actual Approver")) {
            I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + comments + "']//parent::td//preceding-sibling::td[@data-label='Approver']//div[text()='" + value + "']"), true);
        }
    }

    @Then("I see {string} and time format {string} displayed")
    public void iSeeAndTimeFormatDisplayed(String dateValue, String format) {

        String DateValue = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[@data-label='" + dateValue + "']")).getText();
        String dateAndTime[] = DateValue.split(" ");
        String date = dateAndTime[0];
        System.out.println("This is Date:-" + date);
        String mm[] = date.split("/");
        int MM = Integer.parseInt(mm[0]);
        int DD = Integer.parseInt(mm[1]);
        int YYYY = Integer.parseInt(mm[2]);
        String time = dateAndTime[1];
        String timeSplit[] = time.split(":");
        int hr = Integer.parseInt(timeSplit[0]);
        int min = Integer.parseInt(timeSplit[1]);
        String clock = dateAndTime[2];
        if (MM <= 12 && DD <= 31 && YYYY <= 9999 && hr <= 12 && min <= 60) {
            if (clock.equals("PM") || clock.equals("AM")) {
                Assert.assertEquals("MM/dd/yyyy HH:mm", format);
            }
        }
    }

    @Then("I see Date column {string} text displayed and overall status is {string}")
    public void iSeeDateColumnTextDisplayedAndOverallStatusIs(String dateColumn, String overallStatus) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[contains(text(),'" + dateColumn + "')]//parent::tr//child::td//div[text()='" + overallStatus + "']"), true);
    }

    @Then("I see comment column {string} and status is {string}")
    public void iSeeCommentColumnAndStatusIs(String comment, String status) {
        boolean isDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + comment + "']//parent::td[@data-label='Comments']//following-sibling::td//div[text()='" + status + "']"));
        Assert.assertTrue(isDisplayed);
    }

    @Then("I see Date column {string} text displayed")
    public void iSeeDateColumnTextDisplayed(String dateColumn) {
        boolean isDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[@data-label='stepName' and text()='" + dateColumn + "']"));
        Assert.assertTrue(isDisplayed);
    }

    @Description("Check the users status against value in Approval History table inside Hsitory Tab")
    @Then("I see {string} against {string} in approval history")
    public void seeStatusOfRecordInApprovalHistory(String seeThisString, String againstThisString) {
        By listOfsUsers = By.xpath("//div[@id='chevronBarId']//ul[1]//li//a");
        List<Elements> listOfLoc = I.amPerforming().getElementReference().forListOfElements().of(listOfsUsers);
        int expectedIndex = 0;
        for (int i = 0; i < listOfLoc.size(); i++) {
            expectedIndex = expectedIndex + 1;
            if (listOfLoc.get(i).getText().trim().equalsIgnoreCase(againstThisString)) {
                break;
            }
        }
        I.amPerforming().assertionsTo().assertThat(I.amPerforming().actionToGet().text(By.xpath("//div[@id='chevronBarId']//ul[2]//li[" + expectedIndex + "]//a")).trim()).isEqualToIgnoringCase(seeThisString);
    }

    @Then("I see today's {string} is displayed in date column and row number {string}")
    public void iSeeTodaySIsDisplayedInDateColumnAndRowNumber(String RecordDate, String recordNumber) {
        WebElement DateValueElement = I.amPerforming().getElementReference().of(ByUsing.xpath("(//td[@data-label='" + RecordDate + "'])[" + recordNumber + "]"));
        String DateValue = DateValueElement.getText();
        System.out.println("getDateRecord :" + DateValue);
        String dateAndTime[] = DateValue.split(" ");
        String rDate = dateAndTime[0];
        if (DateValueElement.isDisplayed()) {
            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
            Date todayDate = new Date();
            String cDate = formatter.format(todayDate);
            Assert.assertEquals(cDate, rDate);
        }


    }

    @Then("I see Date column {string} text displayed and {string} displayed {string} and status is {string}")
    public void iSeeDateColumnTextDisplayedAndDisplayedAndStatusIs(String dateColumnValue, String columnName, String commentValue, String statusValue) {
        WebElement statusIsSendBack = I.amPerforming().getElementReference().of(ByUsing.xpath("//td[text()='Approval Request Recalled']//parent::td//following-sibling::td//div[text()='" + statusValue + "']"));
        if (statusIsSendBack.isDisplayed()) {
            WebElement commentDisplayed = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[text()='" + dateColumnValue + "']//parent::tr//following-sibling::tr//td[@data-label='" + columnName + "']//div[text()='" + commentValue + "']"));
            boolean commentSentBack = commentDisplayed.isDisplayed();
            Assert.assertTrue(commentSentBack);
        }
    }

    @When("I {string} in the approval decision table and comment {string}")
    public void iInTheApprovalDecisionTableAndComment(String approvalType, String comment) {
        govgrants.perform().approvals().selectRadioButton(approvalType);
        if (govgrants.perform().approvals().isCommentBoxVisible()) {
            govgrants.perform().approvals().enterComment(comment);
        }
        govgrants.perform().approvals().submitApproval(true);
    }

    @When("I {string} in the approval decision table and Select name from dropdown {string} and comment {string}")
    public void iInTheApprovalDecisionTableAndSelectNameFromDropdownAndComent(String approvalType, String approvarName, String comment) {
        govgrants.perform().approvals().selectRadioButton(approvalType);
        if (govgrants.perform().approvals().isCommentBoxVisible()) {
            I.amPerforming().click().on(ByUsing.xpath("(//div/a/span[@class='select2-chosen' and contains(text(),'Search...')])[1]"));
            //By listOfsUsers = By.xpath("//ul[@class='select2-results']//li//div//span[@class='select2-match']");
            By listOfsUsers = By.xpath("//li//div[@class='select2-result-label']");
            List<Elements> opt = I.amPerforming().getElementReference().forListOfElements().of(listOfsUsers);
            for (int j = 0; j < opt.size(); j++) {
                if (opt.get(j).getText().equals(approvarName)) {
                    opt.get(j).click();
                    break;
                }
            }
            govgrants.perform().approvals().enterComment(comment);
        }
        govgrants.perform().approvals().submitApproval(true);
    }

    @When("I click page show {string} entries in {string} table")
    public void iClickPageShowEntriesInTable(String value, String tableName) {
        if (tableName.equals("Contacts@1234567890!@#$%^&*()")) {
            I.amPerforming().click().on(ByUsing.xpath("//button[@name='progress4']"));
            I.amPerforming().click().on(ByUsing.xpath("//div//span[@class='slds-media__body']//span[@title='" + value + "']"));
        }
    }

    @Then("loading icon is display on the contacts flex table")
    public void loadingIconIsDisplayOnTheContactsFlexTable() throws InterruptedException {
        boolean flag = false;
        for (int i = 0; i <= 10; i++) {
            try {
                WebElement icon = I.amPerforming().getElementReference().of(ByUsing.xpath("//div/img[@data-id='SpinnerImage'] | //div[@id='holdon-content']//div//img[@id='govGrantsPleaseWaitHolderId']"));
                System.out.println("icon is available:" + i);
                flag = true;
                break;
            } catch (Exception e) {
                Thread.sleep(1000);
            }
        }
        Assert.assertTrue(flag);
    }

    @Then("I fill the mandatory field randomly {string} and {string} and {string} address")
    public void iFillTheMandatoryFieldRandomlyAndAndAddress(String firstName, String lastName, String email) {
        I.amPerforming().textInput().in(ByUsing.xpath("//*[@id='FirstName']//input[@class='508Input ']"), firstName);
        I.amPerforming().textInput().in(ByUsing.xpath("//*[@id='LastName']//input[@class='508Input ']"), lastName);
        I.amPerforming().textInput().in(ByUsing.xpath("//*[@id='Email']//input[@class='508Input ']"), email);
    }

    @And("I click on {string} before the {string} column")
    public void iClickOnBeforeTheColumn(String checkbox, String columnName) {
        I.amPerforming().click().on(ByUsing.xpath("//span[@title='" + columnName + "']//ancestor::th//preceding-sibling::th//div//input[@type='" + checkbox + "']"));
    }

    @And("I click on {string} button and select {string} option")
    public void iClickOnButtonAndSelectOption(String Action, String value) {
        I.amPerforming().click().on(By.xpath("//*[@data-label='" + Action + "']//descendant::button[@type='button']"));
        I.amPerforming().click().on(ByUsing.xpath("//*[@data-label='Action']//descendant::button[@type='button']//following-sibling::div//descendant::span[text()='" + value + "']"));
    }

    @And("I click on {string} button on confirmation table")
    public void iClickOnButtonOnConformatonTable(String yesButton) {
        I.amPerforming().click().on(By.xpath("//button[@class='slds-button slds-button_brand' and @title='" + yesButton + "'] | //button[@type='button' and text()='" + yesButton + "']"));
    }

    @Then("the position of loading icon is {string} on the LWC flex table")
    public void thePositionOfLoadingIconIsOnTheLWCFlexTable(String arg0) throws InterruptedException {
        boolean flag = false;
        for (int i = 0; i <= 10; i++) {
            try {
                WebElement icon = I.amPerforming().getElementReference().of(ByUsing.xpath("//div/img[@data-id='SpinnerImage'] | //div[@id='holdon-content']//div[@style='text-align: center;']//img[@id='govGrantsPleaseWaitHolderId']"));
                System.out.println("icon is available:" + i);
                flag = true;
                break;
            } catch (Exception e) {
                Thread.sleep(1000);
            }
        }
        Assert.assertTrue(flag);
    }

    @Then("I could not be able to click anywhere on that table")
    public void iCouldNotBeAbleToClickAnywhereOnThatTable() {
        actions.click().build().perform();
    }

    @Then("I see alignment of each column data is to the {string} side")
    public void iSeeAlignmentOfEachColumnDataIsToTheSide(String allignmentSide) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.cssSelector(".slds-scope caption, .slds-scope th, .slds-scope td[Styles='text-align: left;']"), true);

    }

    @Then("I see Approval Decision table contain {string} approval action")
    public void iSeeApprovalDecisionTableContainApprovalAction(String decision) {
        switch (decision) {
            case "Approve":
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//input[@name='myRadio' and @value='Approve']"), true);
                break;
            case "Reject":
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//input[@name='myRadio' and @value='Disapprove']"), true);
                break;
            case "Forward":
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//input[@name='myRadio' and @value='Reassign']"), true);
                break;
            case "Send back":
                I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//input[@name='myRadio' and @value='Send to Owner']"), true);
                break;
        }
    }

    @Then("I see Date column contains {string} text displayed in status column is {string}")
    public void iSeeDateColumnContainsTextDisplayedInStatusColumnIs(String dateColumn, String status) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[contains(text(),'" + dateColumn + "')]//parent::tr//following-sibling::tr//td//div[text()='" + status + "']"), true);
    }

}