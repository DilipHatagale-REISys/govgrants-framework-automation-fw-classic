package com.framework.automation.steps.govgrantsSteps;

import com.helperPackage.govgrants.MainPage;
import com.helperPackage.handlers.govgrants;
import com.helperPackage.handlers.GovGrantsLibrary;
import com.helperPackage.controller.TestingBlazeGlobal;
import com.helperPackage.objects.InstanceRecording;
import com.helperPackage.register.I;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import jdk.jfr.Description;

public class GovGrantsRegistration {
    public GovGrantsRegistration(GovGrantsLibrary saas) {
        InstanceRecording.recordInstance(GovGrantsLibrary.class, saas);
        TestingBlazeGlobal.setVariable("processingHoldOnScreen",MainPage.navLogo);
    }
    @And("I create the user")
    public void iCreateTheUser() {
        govgrants.perform().registration().createUsers();
    }

    @And("^I perform operations on (yopmail|mailDropCC) with mail \"([^\"]*)\" and subject \"([^\"]*)\" with link \"([^\"]*)\"$")
    public void iPerformOperationsOnYopmailWithMail(String portal,String emailId, String subject, String expectedLink) {
        govgrants.perform().registration().performOperationsOnYopmailWithMail(portal, emailId, subject, expectedLink);
    }

    @Before(order = 1)
    public void setup() {}

    @Description("To generate unique emailID, EIN, SSN, UEI or random number")
    @When("^I generate the random (EIN|SSN|EmailID|digits|UEI) and save as \"([^\"]*)\"$")
    public void generateAndSaveRandomDigits(String usage, String fieldKey) {
        String randomNumbers = String.valueOf(I.amPerforming().addOnsTo().getRandomNumber()).substring(0, 5);
        if (usage.equalsIgnoreCase("EmailID"))
            I.amPerforming().propertiesFileOperationsTo().saveValue(fieldKey, ("AutomationRuntime" + randomNumbers + "@yopmail.com"));
        else if (usage.equalsIgnoreCase("EIN") || usage.equalsIgnoreCase("SSN")) {
            String randomEmail = randomNumbers + randomNumbers.substring(0, 4);
            I.amPerforming().propertiesFileOperationsTo().saveValue(fieldKey, randomEmail);
        } else if (usage.equalsIgnoreCase("UEI")) {
            String randomEmail = randomNumbers + randomNumbers + randomNumbers.substring(0, 2);
            I.amPerforming().propertiesFileOperationsTo().saveValue(fieldKey, randomEmail);
        } else
            I.amPerforming().propertiesFileOperationsTo().saveValue(fieldKey, randomNumbers);
    }
}
