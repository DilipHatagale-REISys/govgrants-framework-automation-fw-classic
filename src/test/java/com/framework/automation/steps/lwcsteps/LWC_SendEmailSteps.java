package com.framework.automation.steps.lwcsteps;

import com.framework.automation.pageobject.LWCPage.SendEmailLwcPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.DeviceBucket;
import com.testingblaze.objects.InstanceRecording;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

public class LWC_SendEmailSteps extends GovGrantsManager {
    SendEmailLwcPage sendEmailLwcPage;
    public LWC_SendEmailSteps() {
        sendEmailLwcPage = new SendEmailLwcPage();
    }


}
