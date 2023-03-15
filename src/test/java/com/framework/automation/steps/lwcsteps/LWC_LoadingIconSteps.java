package com.framework.automation.steps.lwcsteps;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebElement;

public class LWC_LoadingIconSteps extends GovGrantsManager {
    @Then("I see loading icon at lwc modal")
    public void iSeeLoadingIconAtLwcModal() throws InterruptedException {
        boolean flag = false;
        for (int i = 0; i <= 10; i++) {
            try {
                WebElement icon = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='modal fade bgColor-black in']//img[@alt='GovGrants Logo' and @id='govGrantsPleaseWaitHolderId'] | //div[@class='slds-modal__content']//c-spinner//div[@class='spinner-container slds-spinner']//img[@data-id='SpinnerImage' and @class='nav-logo govGrantsPleaseWaitHolderId'] | //c-spinner//div[@class='spinner-container slds-spinner']//img[@data-id='SpinnerImage' and @class='nav-logo govGrantsPleaseWaitHolderId'] | //div[@id='holdon-overlay']//img[@id='govGrantsPleaseWaitHolderId']"));
                I.amPerforming().checkToSee().isDisplayed(icon);
                System.out.println("icon is available:" + i);
                flag = true;
                break;
            } catch (Exception e) {
                Thread.sleep(1000);
            }
        }
        Assert.assertTrue(flag);
    }

}
