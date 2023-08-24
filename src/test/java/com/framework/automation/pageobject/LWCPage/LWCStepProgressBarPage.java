package com.framework.automation.pageobject.LWCPage;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class LWCStepProgressBarPage extends GovGrantsManager {

    /******* "Variables and Locators" *****************/
    private final By reachOutToEnhancedGridCollapse;

    /**
     * Constructor to handle dependency injection and framework library
     */
    public LWCStepProgressBarPage() {
        reachOutToEnhancedGridCollapse = By.id("ProgramBudgetCategoryflexTable");
    }

    public void assertExpectedColorOfChevronStatusBar(String status, String colorName) {
        Assert.assertTrue(isExpectedColorDisplayedAtChevronBarForStaus(status, colorName));
    }

    /**
     * @return true if expected changed colour of chevron status bar is displayed
     */
    private Boolean isExpectedColorDisplayedAtChevronBarForStaus(String status, String colorName) {
        boolean flag = false;
        WebElement chevronBar = I.amPerforming().getElementReference().of(By.xpath("//div[@class='slds-grid slds-path__track']//lightning-progress-step//span[@data-label='" + status + "']"));
        switch (colorName.toUpperCase()) {
            case "RED":
                if (chevronBar.getCssValue("color").contains("rgba(255, 255, 255, 1)")
                        || chevronBar.getCssValue("color").contains("rgb(255, 255, 255)")
                        || chevronBar.getAttribute("background").contains("rgb(230, 255, 255)")
                        || chevronBar.getAttribute("background-color").contains("rgba(230, 255, 255, 1)")) {
                    flag = true;
                }
                break;
            case "BLUE":
                if (chevronBar.getCssValue("color").contains("rgba(255, 255, 255, 1)")
                        || chevronBar.getCssValue("color").contains("rgba(11, 11, 160)")
                        || chevronBar.getAttribute("style").contains("rgb(11, 11, 160)")) {
                    flag = true;
                }
                break;
            case "GREEN":
                if (chevronBar.getCssValue("color").contains("rgba(255, 255, 255, 1)")
                        || chevronBar.getCssValue("color").contains("rgba(11, 11, 160)")
                        || chevronBar.getAttribute("style").contains("rgb(11, 11, 160)")) {
                    flag = true;
                }
                break;
        }
        return flag;
    }


}
