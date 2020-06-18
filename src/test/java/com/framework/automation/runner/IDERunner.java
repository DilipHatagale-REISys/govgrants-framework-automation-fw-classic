package com.framework.automation.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup","com.framework.automation.steps","com.automation.rei.govgrantsSteps","com.testingblaze.actionsfactory.gherkin","com.testingblaze.register"},
        features = {"src/test/resources/features"},
        plugin = {"json:target/cucumber-report/cucumber.json","com.testingblaze.controller.ReportingLogsPlugin","html:target/cucumber-html"},
        tags = {"@activeFieldAtCalenderConfig"},
        monochrome = true
)
public class IDERunner {

}

