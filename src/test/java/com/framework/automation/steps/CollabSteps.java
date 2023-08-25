package com.framework.automation.steps;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.pageobject.CollabPage;
import com.framework.automation.pageobject.PageLayoutPage;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import io.appium.java_client.events.api.general.AlertEventListener;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.StringUtils;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;

public class CollabSteps extends GovGrantsManager {
    CollabPage collabPage;

    @When("clicked on view icon if the test is for an {string} application")
    public void clickedOnViewIconIfTheTestIsForAnApplication(String existingApplicationYesorNo) {
        if (existingApplicationYesorNo.equalsIgnoreCase("Yes")) {
            collabPage.clickOnViewButton("1");
        }

    }

    private final By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");

    public void enterDataInFeedSection(String value) {
        I.amPerforming().click().on(feedSection);
        I.amPerforming().textInput().in(feedSection, value);
        I.amPerforming().waitFor().makeThreadSleep(3000);
    }

    @When("enters {string} in my feed section")
    public void entersInMyFeedSection(String arg0) {
        enterDataInFeedSection(arg0);
    }

    @And("I click on {string} on the {string}")
    public void iClickOnOnThe(String buttonName, String arg1) {
        collabPage.ClickOnInsideMyFeed(buttonName);
    }

    @And("selects {string} from To dropdown")
    public void selectsFromToDropdown(String value) {
        // if (!StringUtils.isEmpty(value))
        //{
        collabPage.selectValueFromDropDown(value);
        // }
    }

    @And("^I navigate to back$")
    public void i_navigate_to_back() throws Throwable {
        I.amPerforming().browserOperationsTo().navigateBack();
    }

    @And("I enter this {string} script after {string} and navigate to new URL")
    public void iEnterThisScriptAfterAndNavigateToNewURL(String script, String parameter) {
        if (parameter.equalsIgnoreCase("form id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&recordId")[0];
            String p2 = "&recordId";
            String p3 = url.split("&recordId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Record id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String newUrl = url + script;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("parentowner id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("OrganizationId")[0];
            String p2 = "OrganizationId";
            String p3 = url.split("OrganizationId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Organization id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("22recordId")[0];
            String p2 = "22recordId";
            String p3 = url.split("22recordId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("record id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("parentId")[0];
            String p2 = "parentId";
            String p3 = url.split("parentId")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Application Id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&viewTemplateName")[0];
            String p2 = "&viewTemplateName";
            String p3 = url.split("&viewTemplateName")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("parent id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("template%")[0];
            String p2 = "template%";
            String p3 = url.split("template%")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("template")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("Program")[0];
            String p2 = "Program";
            String p3 = url.split("Program")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("Package id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&listParm")[0];
            String p2 = "&listParm";
            String p3 = url.split("&listParm")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("url id value")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String newUrl = url + script;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        } else if (parameter.equals("templateName")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("Application%20form")[0];
            String p2 = "Application%20form";
            String p3 = url.split("Application%20form")[1];
            String newUrl = p1 + script + p2 + p3;
            I.amPerforming().browserOperationsTo().navigateToUrl(newUrl);
        }

    }

    @And("I click on {string} button inside Dynamic form")
    public void iClickOnButtonInsideDynamicForm(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//input[@title='" + button + "']"));
    }

    @And("I enter this {string} script after {string} and navigate to new URL in All Forms")
    public void iEnterThisScriptAfterAndNavigateToNewURLInAllForms(String script, String parameter) {
        if (parameter.equals("form id")) {
            String url = I.amPerforming().browserOperationsTo().getCurrentUrl();
            String p1 = url.split("&id=a2")[0];
            String p2 = "&id=a2";
            String p3 = url.split("&id=a2")[1];
            String newUrl = p1 + script + p2 + p3;
        }
    }

    @When("I click on {string} inside My Feed")
    public void iClickOnInsideMyFeed(String buttonName) {
        I.amPerforming().click().on(ByUsing.xpath("//ul[@class='collabItemChoices']/li/a[text()='" + buttonName + "']"));
    }


    @And("I enter value {string} inside {string} in My Feed")
    public void iEnterValueInsideInMyFeed(String textInput, String tabName) {
        if (tabName.equals("Link URL")) {
            I.amPerforming().getElementReference().of(ByUsing.xpath("//label[text()='Link URL']/following-sibling::input[@type='text']")).clear();
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()='Link URL']/following-sibling::input[@type='text']"), textInput);
        } else if (tabName.equals("Link Name")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//label[text()=' Link Name ']/following-sibling::input[@type='text']"), textInput);
        } else if (tabName.equals("Post")) {
            I.amPerforming().textInput().in(ByUsing.xpath("//div/div/textarea[@id='TextPublisherEditableArea']"), textInput);
        }
    }

    @And("I select {string} from dropdown in My Feed and Share Post")
    public void iSelectFromDropdownInMyFeedAndSharePost(String dropDownValue) {
        if (dropDownValue.equals("My Followers")) {
//            I.amPerforming().click().on(ByUsing.xpath("//div[@id='CollabPostBottomBar']//a/span[text()='My Followers']"));
            I.amPerforming().click().on(ByUsing.xpath("//input[@value='Share' and @id='PostToFeedButton']"));
        } else if (dropDownValue.equals("A Group")) {
            I.amPerforming().click().on(ByUsing.xpath("//div[@id='CollabPostBottomBar']//a/span[text()='My Followers']"));
            I.amPerforming().click().on(ByUsing.xpath("//a[@title='Post this file to a group']"));
            I.amPerforming().click().on(ByUsing.xpath("//input[@value='Share' and @id='PostToFeedButton']"));
        }
    }

    @And("I click on {string} button inside collab tab")
    public void iClickOnButtonInsideCollabTab(String button) {
        I.amPerforming().click().on(ByUsing.xpath("//a[@title='" + button + "'] | //span//input[@value='" + button + "']"));
    }
}