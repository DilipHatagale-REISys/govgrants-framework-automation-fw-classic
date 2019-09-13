package com.framework.automation.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup","com.framework.automation.steps","com.automation.rei.govgrantsSteps","eyethink.automation.bots.bdd","eyethink.automation.bots.Register"},
        features = {"src/test/resources/features"},
        plugin = {"json:target/cucumber-report/cucumber.json","pretty","html:target/cucumber-html"},
        tags = {"@53194"},
        monochrome = true
)
public class IDERunner {

}

