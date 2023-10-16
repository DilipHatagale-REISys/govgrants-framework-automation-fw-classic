package com.framework.automation.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup", "com.framework.automation.steps", "com.helperPackage.steps", "com.helperPackage.actionsfactory.gherkin", "com.helperPackage.register"},
        features = {"src/test/resources/features"},
        plugin = {"json:target/cucumber-report/cucumber.json", "html:target/cucumber-html", "com.helperPackage.controller.ReportingLogsPlugin"},
        tags = {"@107110"},
        monochrome = true
)
public class IDERunner {

}

