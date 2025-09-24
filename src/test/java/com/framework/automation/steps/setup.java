package com.framework.automation.steps;

import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.UsersAndURL;
import com.helperPackage.controller.TestSetupController;
import com.helperPackage.register.EnvironmentFactory;
import com.helperPackage.report.CSS;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.apache.commons.lang.StringUtils;

import java.awt.*;
import java.io.IOException;

/**
 * @author nauman.shahid * @for REI-Systems * @category Handle browser initialization , appium , hooks and environments
 */
public class setup {
    private TestSetupController userController;
    private static CSS report;
    private ProjectWebServices projectWebServices;

    public setup(TestSetupController userController, ProjectWebServices projectWebServices) {
        this.userController = userController;
        this.projectWebServices = projectWebServices;
        if (report == null) {
            this.report = new CSS();
            EnvironmentFactory.setProjectName("GovGrants Framework Test Automation");
            EnvironmentFactory.setOrgName("REI Systems [Saas Business Unit]");
            EnvironmentFactory.setProjectPath(System.getProperty("user.dir"));
            report.reportConfigWriteUp();
        }
    }

    @Before(order = 2)
    public void setUpUsers() throws IOException, AWTException {
        userController.usersController(new UsersAndURL());
    }

    @After(order = 1)
    public void wrapUp(Scenario scenario) throws IOException {
        try {
            ProjectWebServices.thisValue.postDefaultConfigCall();
            ProjectWebServices.thisValue = null;
        } catch (Exception e) {
            ProjectWebServices.thisValue = null;
        }
    }

    @After(order = 2)
    public void deleteMe() {
        if (StringUtils.containsIgnoreCase(EnvironmentFactory.getEnvironmentName(), "GRANTOR"))
            projectWebServices.deleteRecordInHooks();
        //       else if (StringUtils.containsIgnoreCase(EnvironmentFactory.getEnvironmentName(), "GRANTEE"))
        //           projectWebServices.deleteRecordInHooks();
        //        ProjectWebServices.changeUserActivationStatus("automationinternal", false);
    }
}