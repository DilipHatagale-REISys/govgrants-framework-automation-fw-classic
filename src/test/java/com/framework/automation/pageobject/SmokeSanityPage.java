package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class SmokeSanityPage extends GovGrantsManager {


    /******* "Variables and Locators" *****************/
    private final By
            searchInput = By.cssSelector("div>div.quick-search>div>input"),
            quickSearchButton = By.cssSelector("div.input-group-btn>a>i.fa.fa-search"),
            globalSearchInput = By.cssSelector("div.input-group>input#isTypeNotAhead"),
            globalSearchButton = By.cssSelector("div.input-group>a>i.fa.fa-search"),
            sidebar = By.cssSelector("div[id='sidebar-wrapper']>div>span>div[id='sidebarAppId']"),
            lookupfield = ByUsing.xpath("//*[@class='lookupInput']//input"),
            fnameForCreateContact = ByUsing.xpath("//span[@id='FirstName']//input[normalize-space(@class='508Input') and @type='text']"),
            lnameForCreateContact = ByUsing.xpath("//span[@id='LastName']//input[normalize-space(@class='508Input') and @type='text']"),
            emailForCreateContact = ByUsing.xpath("//span[@id='Email']//input[normalize-space(@class='508Input') and @type='text']");

    /******* "Key Methods with complete functionality - Public" *****************/

    public WebElement lookupFieldSearchIcon(String searchIcon) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@id='" + searchIcon + "']//*[@class='fa fa-search']"));
    }

    public WebElement modaltitlename(String windowTitle) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//p[text()='" + windowTitle + "']/../..//div[@class='modalLoadIcon']"));
    }

    public WebElement collabWebElement(String componentName) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//h2[text()='" + componentName + "']/ancestor::div[@class='panel collabPanel']/div[@class='panel-body'] | //ul/li/a[text()='" + componentName + "']/ancestor::div[@class='collabWrapper']"));
    }


    /**
     * perform complete quick search in flex
     *
     * @return
     * @author dilip.hatagale
     */

    public void assertIfGlobalSeachButtonDisplayedOrNot(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(globalSearchButtonDisplayed()).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(globalSearchButtonDisplayed()).isFalse();
        }
    }

    private boolean globalSearchButtonDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(globalSearchInput)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfLookupFieldDisplayedOrNotOnModalWindow(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(lookupFieldDisplayedOrNot()).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(lookupFieldDisplayedOrNot()).isFalse();
        }
    }

    private boolean lookupFieldDisplayedOrNot() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(lookupfield)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void clickOnLookupFieldObject(String searchIcon) {
        I.amPerforming().click().on(lookupFieldSearchIcon(searchIcon));
    }

    public void assertIfListOfLookupFieldDisplayedOrNot(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(listOflookupFieldDisplayedOrNot()).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(listOflookupFieldDisplayedOrNot()).isFalse();
        }
    }

    private boolean listOflookupFieldDisplayedOrNot() {
        boolean flag = false;
        try {
            List<Elements> listOfElements = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//div[@id='lookuploading']//table//tbody//tr[@ng-repeat='row in tableData']"));
            if (listOfElements.size() > 0) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfSideBarDisplayedOrNot(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(sidebarOnLeftSideDisplayedOrNot()).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(sidebarOnLeftSideDisplayedOrNot()).isFalse();
        }
    }

    private boolean sidebarOnLeftSideDisplayedOrNot() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(sidebar)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfModalWindowWithNmaeDisplayedOrNot(String usage, String windowTitle) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(modalWithTitleDisplayedOrNot(windowTitle)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(modalWithTitleDisplayedOrNot(windowTitle)).isFalse();
        }
    }

    private boolean modalWithTitleDisplayedOrNot(String windowTitle) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(modaltitlename(windowTitle))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfCollabComponentRenderProperlyOrNot(String usage, String componentName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(componentRenderProperlyOnCollabPhase(componentName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(componentRenderProperlyOnCollabPhase(componentName)).isFalse();
        }
    }

    private boolean componentRenderProperlyOnCollabPhase(String componentName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(collabWebElement(componentName))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfTaskIsDisplayedOrNot(String usage, String parameterValue) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(approvalComponent(parameterValue)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(approvalComponent(parameterValue)).isFalse();
        }
    }

    private boolean approvalComponent(String parameterValue) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='toggleFlexTableHomePendingTasks']//span[@title='" + parameterValue + "'] | //h2[contains(text(),'" + parameterValue + "')]/parent::div/following-sibling::div//div[contains(@class,'approvalDecisionBoxRadio')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void createContactInOverViewTab(String fname, String lname, String emailid) {
        I.amPerforming().textInput().toClear(fnameForCreateContact);
        I.amPerforming().textInput().in(fnameForCreateContact, fname);
        I.amPerforming().textInput().toClear(lnameForCreateContact);
        I.amPerforming().textInput().in(lnameForCreateContact, lname);
        I.amPerforming().textInput().toClear(emailForCreateContact);
        I.amPerforming().textInput().in(emailForCreateContact, emailid);

    }

    public void assertIfPanalBodyIsDisplayedWithPanalHeader(String usage, String panalName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(panalDisplayedOrNot(panalName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(panalDisplayedOrNot(panalName)).isFalse();
        }
    }

    private boolean panalDisplayedOrNot(String panalName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()[contains(normalize-space(.), '" + panalName + "')]]/parent::div/following-sibling::div"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
