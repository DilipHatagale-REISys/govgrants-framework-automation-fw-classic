package com.framework.automation.pageobject;

import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.openqa.selenium.By;

public class CollabPage {
    private final By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");


    By firstRecordViewButton = By.xpath("//tr[@ng-repeat='row in tableData'][1]//i[@class='fa fa-eye']");
    By To = By.xpath("//a[@id='postToAnchorVal']|//div[@id='PostToText']");

    public void clickOnViewButton(String rowNumber)
    {
        I.amPerforming().click().on(firstRecordViewButton);
    }
    public void selectValueFromDropDown(String value) {
        // I.amPerforming().dropDownSelection().from(By.xpath("//a[@id='postToAnchorVal']|//div[@id='PostToText']")).selectByValue(value);
        I.amPerforming().dropDownSelection().from(To).selectByValue(value);

        // By firstRecordViewButton = By.xpath("//a[@id='postToAnchorVal']|//div[@id='PostToText']");
    }

    public void ClickOnInsideMyFeed(String buttonName) {
        I.amPerforming().click().on(By.xpath("//div[@id='CollabPostBottomBar']//input[@value='" + buttonName + "']"));

    }
}
