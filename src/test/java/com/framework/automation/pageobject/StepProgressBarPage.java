package com.framework.automation.pageobject;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class StepProgressBarPage extends GovGrantsManager {
    public final By stepProgressBar;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public StepProgressBarPage() {
        stepProgressBar = By.xpath("//div[@class='container-fluid']//*[@id='progressBarId']//ol//li");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    /**
     * assert if step progress bar is not displayed
     */
    public void assertStepProgressBarForCustomApp(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isStepProgressBarIsNotDisplayed()).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isStepProgressBarIsNotDisplayed()).isFalse();
        }
    }

    /**
     * assert if step progress bar is not displayed
     */
    public void assertStepInsideStepProgressBarForUser(String statusName) {
        Assert.assertTrue(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
    }

    /**
     * assert if step progress bar is displayed
     */
    public void assertStepInsideStepProgressBarIsDisplayedForUser(String statusName) {
        Assert.assertFalse(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
    }

    /**
     * assert if status item submit for approval is on correct sequence in step
     * progress bar
     *
     * @param statusName
     * @param sequenceNumber
     */
    public void assertStatusSequenceInsideProgressBar(String statusName, int sequenceNumber) {
        Assert.assertTrue(isStatusItemSequence(statusName, sequenceNumber));
    }

    /**
     * assert if changed display name for specific status of step progress bar is
     * displayed
     */
    public void assertChangedDisplayNameInsideStepProgressBarForUser(String statusName) {
        Assert.assertFalse(isStatusStepInsideProgressBarIsNotDisplayed(statusName));
    }

    /**
     * assert if expected color of chevron bar is displayed
     */
    public void assertExpectedColorOfChevronStatusBar(String colorName, String status) {
        Assert.assertFalse(isExpectedColorDisplayedAtChevronBarForStaus(colorName, status));
    }

    /**
     * click on help text inside program information page block
     *
     * @param statusName
     */
    public void getHoveringContentOfStepProgressBar(String statusName) {
        I.amPerforming().scroll().toMoveToElement(I.amPerforming().getElementReference().of(By.xpath("//div[@class='container-fluid']//*[@id='progressBarId']//li//span[contains(text(),'" + statusName + "')]"), false));
    }

    /*********
     * "Local Methods with Limited functionality - Private"
     *****************/

    /**
     * validate if step progress bar is displayed or not
     *
     * @return: true if it is not displayed
     */
    private boolean isStepProgressBarIsNotDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(stepProgressBar)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    /**
     * @param statusName:
     * @param sequenceNumber:
     * @return
     */
    private Boolean isStatusItemSequence(String statusName, int sequenceNumber) {
        if (getallStatusItemList().get(sequenceNumber).getText().contains(statusName)) {
            return true;
        } else
            return false;
    }

    /**
     * @return: List of all status item of step progress bar.
     */
    private List<Elements> getallStatusItemList() {
        return I.amPerforming().getElementReference().forListOfElements().of(stepProgressBar);
    }

    /**
     * validate if status step 'submit for approval' is displayed or not inside step
     * status progress bar
     *
     * @return: true if it is not displayed
     */
    private boolean isStatusStepInsideProgressBarIsNotDisplayed(String statusName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(govgrants.perform().pageDetails().getSpecificStatusFromProgressBar(statusName))) {
                flag = false;
            }
        } catch (Exception e) {
            flag = true;
        }
        return flag;
    }

    /**
     * @return true if expected changed colour of chevron status bar is displayed
     */
    private Boolean isExpectedColorDisplayedAtChevronBarForStaus(String colorName, String status) {
        boolean flag = false;
        WebElement chevronBar = I.amPerforming().getElementReference().of(By.xpath("//div[@id='chevronBarId']/ul/li/a[contains(@class,'" + status + "')]"));
        switch (colorName.toUpperCase()) {
            case "Red":
                if (chevronBar.getCssValue("color").contains("255, 255, 255, 1")
                        || chevronBar.getCssValue("color").contains("rgb(255, 255, 255)")
                        || chevronBar.getAttribute("style").contains("rgb(2255, 255, 255)")) {
                    flag = true;
                }
                break;
            case "BLUE":
                if (chevronBar.getCssValue("color").contains("rgba(11, 11, 160, 1)")
                        || chevronBar.getCssValue("color").contains("rgba(11, 11, 160)")
                        || chevronBar.getAttribute("style").contains("rgb(11, 11, 160)")) {
                    flag = true;
                }
                break;
        }
        return flag;
    }
}