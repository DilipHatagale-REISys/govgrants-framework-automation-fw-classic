package com.framework.automation.steps.lwcsteps;

import com.framework.automation.pageobject.LWCPage.LWCCommonPage;
import com.framework.automation.pageobject.LWCPage.LWCStepProgressBarPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.cucumber.java.en.Then;

public class LWC_StepProgressBarSteps extends GovGrantsManager {

    LWCStepProgressBarPage lwcStepProgressBarPage;

    public LWC_StepProgressBarSteps() {
        lwcStepProgressBarPage = new LWCStepProgressBarPage();
    }

    @Then("I softly see status in step Progress-bar is {string}")
    public void iSoftlySeeStatusInStepProgressBarIs(String stepStatusName) {
//        String colour = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-grid slds-path__track']//lightning-progress-step//span[@data-label='" + stepcolour + "']")).getCssValue("color");
//        String style = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-grid slds-path__track']//lightning-progress-step//span[@data-label='" + stepcolour + "']")).getCssValue("style");
//        String background = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-grid slds-path__track']//lightning-progress-step//span[@data-label='" + stepcolour + "']")).getCssValue("background");
//        String backgroundColor = I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='slds-grid slds-path__track']//lightning-progress-step//span[@data-label='" + stepcolour + "']")).getCssValue("background-color");

        String colour = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@data-id='" + stepStatusName + "']")).getCssValue("color");
        String style = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@data-id='" + stepStatusName + "']")).getCssValue("style");
        String background = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@data-id='" + stepStatusName + "']")).getCssValue("background");
        String backgroundColor = I.amPerforming().getElementReference().of(ByUsing.xpath("//*[@data-id='" + stepStatusName + "']")).getCssValue("background-color");

        System.out.println("getting color code :" + colour);
        System.out.println("getting style :" + style);
        System.out.println("getting background :" + background);
        System.out.println("getting backgroundColor :" + backgroundColor);
    }


    @Then("^I softly see status in step Progress-bar is \"([^\"]*)\" and is \"([^\"]*)\"$")
    public void iSoftlySeeStatusInStepProgressBarIsAndIs(String status, String colorName) {
        lwcStepProgressBarPage.assertExpectedColorOfChevronStatusBar(status, colorName);
    }
}
