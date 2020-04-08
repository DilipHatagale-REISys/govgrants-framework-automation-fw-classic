package com.framework.automation.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup","com.framework.automation.steps","com.automation.rei.govgrantsSteps","com.TestingBlazeGlobal.actionsfactory.gherkin","com.TestingBlazeGlobal.register"},
        features = {"src/test/resources/features"},
        plugin = {"json:target/cucumber-report/cucumber.json","eyethink.automation.bots.controller.ReportingLogsPlugin","html:target/cucumber-html"},
        tags = {"@59827"},
        monochrome = true
)
public class IDERunner {

}

