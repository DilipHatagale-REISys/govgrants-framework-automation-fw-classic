package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.controller.DeviceBucket;
import com.helperPackage.objects.Elements;
import com.helperPackage.objects.InstanceRecording;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import com.helperPackage.controller.DeviceBucket;

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

    public WebElement sidebarElementOnCollabPahse(String linkName) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//a[text()='My Feeds']/following-sibling::div[@class='collabSubMenuOptions']//a[text()='" + linkName + "'] | //div[@id='CollabMenu']//ul//li//*[contains(text(),'" + linkName + "')]"));
    }

    public WebElement buttonInsideCommentInPost(String button, String comment) {
        return I.amPerforming().getElementReference().of(ByUsing.xpath("//div[@class='initialPost media-body']//div[contains(text(),'" + comment + "')]/ul//*[text()='" + button + "']"));
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

    public void menuItemDisplayedOnceClickOnMenuButton(String usage, String optionName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(menuItemDisplayedOrNot(optionName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(menuItemDisplayedOrNot(optionName)).isFalse();
        }
    }

    private boolean menuItemDisplayedOrNot(String optionName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//ul[@class='dropdown-menu dropdown-menu-right']/li/a/span[text()='" + optionName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void attachFileFromSystem(String attachmentName) {
        By attachmentChooseFilePath = By.xpath("//div//input[@id='file-upload-input-01' and @type='file']");
        String defaultFilePath = System.getProperty("user.dir") + "/src/main/resources/";
        I.amPerforming().textInput().in(attachmentChooseFilePath, defaultFilePath + attachmentName);
    }

    public void verifyIfRecordTypeAndRecordNameIsDisplayed(String usage, String recordType, String recordName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(recordNameWithRecordTypeDisplayed(recordType, recordName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(recordNameWithRecordTypeDisplayed(recordType, recordName)).isFalse();
        }
    }

    private boolean recordNameWithRecordTypeDisplayed(String recordType, String recordName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[text()='" + recordType + "']//following-sibling::span[@class='overview-title' and text()='" + recordName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void enterTextInideFeedSectionAndClickOnShareButton(String value) {
        By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");
        I.amPerforming().click().on(feedSection);
        I.amPerforming().textInput().in(feedSection, value);
        I.amPerforming().waitFor().makeThreadSleep(3000);
        I.amPerforming().addOnsTo().getKeyBoard().keyPress(Keys.ENTER);
        I.amPerforming().click().on(ByUsing.xpath("//div/input[@id='PostToFeedButton']"));
    }

    public void enterUserNameAndTextValueInsideMyFeedSection(String userName, String value, boolean isPost) {
        if (isPost == true) {
            By feedSection = ByUsing.xpath("//div/textarea[@class='mention-for-post']");
            I.amPerforming().click().on(feedSection);
            I.amPerforming().textInput().in(feedSection, userName);
            I.amPerforming().waitFor().makeThreadSleep(3000);
            if (userName.contains("@")) {
                String[] value1 = userName.split("@");
                I.amPerforming().click().on(ByUsing.xpath("//div[@class='mentions-autocomplete-list']//li[@data-display='" + value1[1] + "']"));
            }
            I.amPerforming().textInput().in(feedSection, value);
            I.amPerforming().click().on(ByUsing.xpath("//div/input[@id='PostToFeedButton']"));
        }
    }

    public void commentInsidePostDisplayedOrNot(String usage, String comment, String post) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(commentDisplayedOnCollabInsideRelatedPost(comment, post)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(commentDisplayedOnCollabInsideRelatedPost(comment, post)).isFalse();
        }
    }

    private boolean commentDisplayedOnCollabInsideRelatedPost(String comment, String post) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + post + "']/parent::div[@class='pull-right firstColor media-body']//following-sibling::div[contains(@class,'collabComment')]//div[text()='" + comment + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfUserNameDisplayedOnCollabPhase(String usage, String userName) {
        if (usage.equalsIgnoreCase("see Username")) {
            I.amPerforming().assertionsTo().assertThat(userNameOrEmailIdDisplayed(userName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see Username")) {
            I.amPerforming().assertionsTo().assertThat(userNameOrEmailIdDisplayed(userName)).isFalse();
        }
    }

    private boolean userNameOrEmailIdDisplayed(String userNameOrEmailId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@class,'profile')]//*[contains(text(),'" + userNameOrEmailId + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertIfSideBarLinkDisplayedOrNot(String usage, String linkName) {
        if (usage.equalsIgnoreCase("see Username")) {
            I.amPerforming().assertionsTo().assertThat(sidebarLinkDisplayedOrNotOnCollabPhase(linkName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see Username")) {
            I.amPerforming().assertionsTo().assertThat(sidebarLinkDisplayedOrNotOnCollabPhase(linkName)).isFalse();
        }
    }

    private boolean sidebarLinkDisplayedOrNotOnCollabPhase(String linkName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='CollabMenu']//ul//li//*[contains(text(),'" + linkName + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertPageBlockIsDisplayedOrNotDisplayedWithTextXpath(String usage, String titleName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isPageBlockTitleDisplayedWithTextXpath(titleName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isPageBlockTitleDisplayedWithTextXpath(titleName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(isPageBlockTitleDisplayedWithTextXpath(titleName)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(isPageBlockTitleDisplayedWithTextXpath(titleName)).isFalse();
        }
    }

    private boolean isPageBlockTitleDisplayedWithTextXpath(String titleName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@class='panel-heading']/div/h3//span[text()='" + titleName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void asserIfLinkIsDisplayedEnabledOrNot(String linkName, String status) {
        if (status.contains("not")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(sidebarElementOnCollabPahse(linkName))).isFalse();
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isEnabled(sidebarElementOnCollabPahse(linkName))).isFalse();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(sidebarElementOnCollabPahse(linkName))).isTrue();
        I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isEnabled(sidebarElementOnCollabPahse(linkName))).isTrue();
    }

    public void assertIfButtonInsideCommentIsDisplayedAndEnabled(String usage, String button, String comment) {
        if (usage.contains("not")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(buttonInsideCommentInPost(button, comment))).isFalse();
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isEnabled(buttonInsideCommentInPost(button, comment))).isFalse();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(buttonInsideCommentInPost(button, comment))).isTrue();
        I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isEnabled(buttonInsideCommentInPost(button, comment))).isTrue();
    }

    public void clickOnLikeCountInCollabPhase(String button, String comment) {
        I.amPerforming().click().on(ByUsing.xpath("//div[text()='" + comment + "']/parent::div[contains(@class,'media-body')]/following-sibling::div[@class='collabComment']//span[text()='" + button + "']"));
    }

    public void assertIfLikeListDisplayedUsername(String usage, String username) {
        if (usage.contains("not")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//ul[@class='collabLikesList']/li//a[text()='" + username + "']"))).isFalse();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//ul[@class='collabLikesList']/li//a[text()='" + username + "']"))).isTrue();
    }


    public void assertIfEmailIdWithUserNameDisplayedOrNot(String usage, String username, String emailid) {
        if (usage.contains("profile picture")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//p[text()='" + username + "']/parent::div//a[text()='" + emailid + "']/ancestor::div[contains(@class,'contentWrapper')]//img[contains(@class,'communityUsersImage')]"))).isTrue();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//p[text()='" + username + "']/parent::div//a[text()='" + emailid + "']"))).isTrue();
    }

    public void assertIfGroupNameAndMembercountIsDisplayed(String usage, String groupname, String membercount) {
        if (usage.contains("not")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + groupname + "']/ancestor::div[@class='groupsInfo']//span[contains(text(),'" + membercount + "')]"))).isFalse();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + groupname + "']/ancestor::div[@class='groupsInfo']//span[contains(text(),'" + membercount + "')]"))).isTrue();
    }

    public void assertIfButtonIsDislayedOnTableId(String usage, String buttonname, String tableid) {
        if (usage.contains("not")) {
            try {
                I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableid + "']/preceding-sibling::div//button[text()='" + buttonname + "']"))).isFalse();
            } catch (Exception e) {
                //handled excpeption for continued execution
            }
        } else
            I.amPerforming().assertionsTo().assertThat(I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableid + "']/preceding-sibling::div//button[text()='" + buttonname + "']"))).isTrue();
    }

    public void assertHeaderInstructionTextInModal(String headerText) {
        Assert.assertTrue(isHeaderInstructionTextDisplayedInModal(headerText));
    }

    private boolean isHeaderInstructionTextDisplayedInModal(String headerText) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@class='row']//span[@class='pbNormalText' and contains(text(),'" + headerText + "')]"))) {
            flag = true;
        }
        return flag;
    }

    public void assertIfTabTitleOnModalIsDisplayed(String usage, String tabName) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(tabOnModalDisplayedOrNot(tabName)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(tabOnModalDisplayedOrNot(tabName)).isFalse();
        }
    }

    private boolean tabOnModalDisplayedOrNot(String tabName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//lightning-tab-bar//ul//li[@title='" + tabName + "'] | //*[@data-toggle='tab' and @name='" + tabName + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertRowGroupingDisplayed(String rowGrouping, String tableId) {
        Assert.assertTrue(isRowGroupingDisplayed(rowGrouping, tableId));
    }

    private boolean isRowGroupingDisplayed(String rowGrouping, String tableId) {
        boolean flag = false;
        if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//span[contains(@ng-bind,'groupingField') and contains(text(),'" + rowGrouping + "')]"))) {
            flag = true;
        }
        return flag;
    }
}
