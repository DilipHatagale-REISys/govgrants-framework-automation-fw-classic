package com.framework.automation.steps;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.controller.DeviceBucket;
import com.helperPackage.objects.Elements;
import com.helperPackage.objects.InstanceRecording;
import com.helperPackage.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class clickjackSteps extends GovGrantsManager {
    /////////////clickjackSteps/////////
    @And("I click on {string} view icon inside {string} chart")
    public void iClickOnViewIconInside(String viewIcon, String chartName) {
        I.amPerforming().click().on(ByUsing.xpath("//a[@title='" + chartName + "']/parent::div//following-sibling::span//div//span/a[@title='" + viewIcon + "']"));
    }

    @And("I close current child window")
    public void iCloseCurrentChildWindow() {
        //Get handles of the windows
        String MainWindow = ((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver().getWindowHandle();
        Set<String> allWindowHandles = ((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver().getWindowHandles();
        Iterator<String> i1 = allWindowHandles.iterator();
        // Here we will check if child window has other child windows and close
        while (i1.hasNext()) {
            String ChildWindow = i1.next();
            if (!MainWindow.equalsIgnoreCase(ChildWindow)) {
                ((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver().switchTo().window(ChildWindow);
                ((DeviceBucket) InstanceRecording.getInstance(DeviceBucket.class)).getDriver().close();
                System.out.println("Child window closed");
            }
        }
    }

    @And("I select {string} inside {string} chart")
    public void iSelectInsideChart(String value, String chart) {
        I.amPerforming().click().on(ByUsing.xpath("//a[text()='" + chart + "']//parent::div/following-sibling::span//a[@title='" + value + "']"));
    }

    @Then("I see {string} modal is open with data")
    public void iSeeModalIsOpenWithData(String value) {
        I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[text()='" + value + "'] | //h2[text()='" + value + "'] | //p[text()='" + value + "']"), true);
    }

    @And("I click on {string} button in modal")
    public void iClickOnButtonInModal(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//button/span[text()='" + button + "']"));
    }

    @And("I enter {string} inside quick search")
    public void iEnterInsideQuickSearch(String text) {
        I.amPerforming().textInput().in(ByUsing.xpath("//input[@title='Type to search in table']"), text);
    }

    @Then("I see Status column contains {string} if search {string}")
    public void iSeeStatusColumnContainsIfSearch(String status, String searchText) {
        if (searchText.equals("Created")) {
            boolean statusDisplayed = I.amPerforming().checkToSee().isDisplayed("//span[contains(text(),'" + status + "')]");
            Assert.assertTrue(statusDisplayed);
        }
    }

    @Then("All records contains {string} is show for user")
    public void allRecordsContainsIsShowForUser(String text) {
        List<Elements> allOptions = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//span[contains(text(),'" + text + "')]"));
        int sizeOfElements = allOptions.size();
        System.out.println("size of options :" + sizeOfElements);
        Assert.assertEquals(sizeOfElements > 0, true);
    }

    @Then("I can see pagination with button {string} for first page {string} for one page back {string} for one page Next and {string} for on last page in pagination")
    public void iCanSeePaginationWithButtonForFirstPageForOnePageBackForOnePageNextAndForOnLastPageInPagination(String first, String previous, String next, String last) {
        if (next.equalsIgnoreCase("Next")) {
            boolean nextPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-forward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-forward']"));
            Assert.assertTrue(nextPage);
        } else if (last.equalsIgnoreCase("Last")) {
            boolean lastPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-fast-forward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-fast-forward']"));
            Assert.assertTrue(lastPage);
        } else if (previous.equalsIgnoreCase("Previous")) {
            boolean previousPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-backward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-backward']"));
            Assert.assertTrue(previousPage);
        } else if (first.equalsIgnoreCase("First")) {
            boolean firstPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-fast-backward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-fast-backward']"));
            Assert.assertTrue(firstPage);
        }
    }

    @And("I Select {string} value from dropdown")
    public void iSelectValueFromDropdown(String value) {
        I.amPerforming().click().on(ByUsing.xpath("//div/div/span/select[@name='selectSizePerPage']"));
        I.amPerforming().click().on(ByUsing.xpath("//option[text()='" + value + "']"));
    }

    @Then("I see {string} arrow is Displayed and Enabled on Pagination and click on button")
    public void iSeeArrowIsDisplayedAndEnabledOnPagination(String button) {
        if (button.equalsIgnoreCase("Next")) {
            boolean nextPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-forward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-forward']"));
            Assert.assertTrue(nextPage);
        } else if (button.equalsIgnoreCase("Previous")) {
            boolean previousPage = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@class='fa fa-backward']"));
            I.amPerforming().click().on(ByUsing.xpath("//span[@class='fa fa-backward']"));
            Assert.assertTrue(previousPage);
        }
    }

    @Then("I see pagination contains {string}")
    public void iSeePaginationContains(String msg) {
        boolean elementdisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[contains(text(),'" + msg + "')]"));
        Assert.assertTrue(elementdisplayed);
    }

    @Then("I can see {string} axis name displayed as {string}")
    public void iCanSeeAxisNameDisplayedAs(String axis, String value) {
        if (axis.equalsIgnoreCase("X")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@class='highcharts-axis highcharts-xaxis']//*[text()='" + value + "'] | //*[@class='highcharts-axis highcharts-yaxis']//*[text()='" + value + "']"));
            Assert.assertTrue(elementDisplayed);
        } else if (axis.equalsIgnoreCase("Y")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@class='highcharts-axis highcharts-yaxis']//*[text()='" + value + "'] | //*[@class='highcharts-axis highcharts-xaxis']//*[text()='" + value + "']"));
            Assert.assertTrue(elementDisplayed);
        } else if (axis.equalsIgnoreCase("y axis ID contain")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[@class='highcharts-axis-labels highcharts-xaxis-labels']//*[text()='" + value + "']"));
            Assert.assertTrue(elementDisplayed);
        }
    }

    @And("I hover mouse over bar inside {string} chart")
    public void iHoverMouseOverBarInsideChart(String chart) {
        if (chart.equalsIgnoreCase("Grants Awarded")) {
            I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("(//*[@class='highcharts-series-group']//*[@class='highcharts-point highcharts-color-4'])[2]"));
        } else if (chart.equalsIgnoreCase("Enhanced Pie")) {
            I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("(//div//*[@class='highcharts-series-group']/*/*[@stroke-linejoin='round'])[1]"));
        } else if (chart.equalsIgnoreCase("Enhanced Area")) {
            I.amPerforming().scroll().toMoveToElement(ByUsing.xpath("(//div/div//*[@class='highcharts-point highcharts-color-0'])[2]"));
        }
    }


    @Then("I see {string} equal to {string} inside {string} chart")
    public void iSeeEqualToInsideChart(String key, String value, String chartName) {
        if (chartName.equalsIgnoreCase("Enhanced Pie chart")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='GT-GNT_H-001: ']/following-sibling::*[text()='" + value + "']"));
            Assert.assertTrue(elementDisplayed);
        } else if (chartName.equalsIgnoreCase("Grants Awarded")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='Count: ']/parent::tr/td[@style='padding:0']/b[contains(text(),'" + value + "')]"));
            Assert.assertTrue(elementDisplayed);
        } else if (chartName.equalsIgnoreCase("Enhanced Area")) {
            boolean elementDisplayed = I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//td[text()='" + key + " ']/parent::tr/td/b[contains(text(),'" + value + "')]"));
            Assert.assertTrue(elementDisplayed);
        }
    }


    /////////////////////////////stepProgressBar-Steps///////////////////////////////////
    @And("I click inside {string} and select {string} from table in Create Program modal")
    public void iClickInsideAndSelectFromTable(String field, String OrganizationName) {
        if (field.equalsIgnoreCase("Primary Funding Organization")) {
            I.amPerforming().click().on(ByUsing.xpath("//input[@id='input-11']"));
            I.amPerforming().waitFor().makeThreadSleep(1000);
            I.amPerforming().click().on(ByUsing.xpath("//label[contains(text(),'Primary Funding Organization')]/parent::div//div[@role='listbox']/table/tbody/tr/td/div[contains(text(),'" + OrganizationName + "')]"));
        }

    }

    @And("I click on Rating dropdown select {string} from value and {string} inside comment")
    public void iClickOnRatingDropdownSelectFromValueAndInsideComment(String dropdownValue, String comment) {
        I.amPerforming().click().on(ByUsing.xpath("//option[@value='" + dropdownValue + "']"));
        I.amPerforming().textInput().in(ByUsing.xpath("//label[contains(text(),'Comments')]/parent::div/span/textarea"), comment);
    }

    @And("I add notes Records title as {string} and description {string} and {string} button")
    public void iAddNotesRecordsTitleAsAndDescriptionAndButton(String title, String description, String button) {
        By notesDescriptionPath = By.xpath("//div[@id='addAtt']//label[text()='Description']/..//textarea | //div[@id='addAtt']/table/tbody/tr/td/label[@for='Description']/following::textarea");
        By notesTitle = By.xpath("//div[@id='addAtt']//label[text()='Title']/..//input | //div[@id='addAtt']/table/tbody/tr/td/label[@for='Title']/following-sibling::input[@type='text']");
        I.amPerforming().textInput().in(notesTitle, title);
        I.amPerforming().textInput().in(notesDescriptionPath, description);
        I.amPerforming().click().on(By.xpath("//input[@value='"+ button +"']|//input[@value='Save and Close Modal']"));
    }
}
