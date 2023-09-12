package com.framework.automation.pageobject;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.util.List;

public class FrameworkCookiesPage extends GovGrantsManager {
    /******* "Variables and Locators" *****************/


    private static By defaultValueMassage;

    public FrameworkCookiesPage() {
        defaultValueMassage = By.xpath("//div[@class='panel-title custom-title ng-scope']/following::div/span[@class='sessionClass' and contains(text(),'Click ‘Reset Table’ under the menu icon to refresh the table’s default values')] " +

                "| //div[@class='container-fluid ng-scope']//span[text()='Click ‘Reset Table’ under the menu icon to refresh the table’s default values']");
    }

    public void assertFlexTabelPaginationEnabled(String usage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isLastPageOnPagination(tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isLastPageOnPagination(tableId)).isFalse();
        }
    }

    private Boolean isLastPageOnPagination(String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//div/span[@class='pull-right table-pager ng-scope']/a[@title='Last' and @ng-disabled='true']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void assertPaginationOnCurrentPage(String usage, String tableId, String textContains) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isCurrentPageDisplayed(tableId, textContains)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isCurrentPageDisplayed(tableId, textContains)).isFalse();
        }
    }

    private Boolean isCurrentPageDisplayed(String tableId, String textContains) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//div/span[@class='pull-right table-pager ng-scope']//span[@class='bold ng-binding' and contains(text(),'" + textContains + "')] |" +
                    " //div[@id='" + tableId + "']//div//span[@class='pull-right table-pager ng-scope']/span[@class='bold ng-binding' and contains(text(),'" + textContains + "')] |" +
                    " //div[@id='" + tableId + "']//div[@class='table-pager col-md-4 col-sm-4 col-xs-4 ng-scope']//span[@ng-bind='pageInfo' and contains(text(),'" + textContains + "')] |" +
                    " //div[@id='" + tableId + "']//div[@class='table-pager col-md-4 col-sm-4 col-xs-4 ng-scope']//span[@ng-bind='pageInfo']//*[contains(text(),'" + textContains + "')] |" +
                    " //div[@id='" + tableId + "']/descendant::div[@class='row ng-scope']//div[contains(@ng-if,'EnablePagination')]/*[contains(text(),'" + textContains + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public static void assertIfMessageDisplayed(String usage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isMessageDisplayed());
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isMessageDisplayed());
        }
    }


    private static boolean isMessageDisplayed() {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(defaultValueMassage)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public static void enterTextAndClickOnSearchButton(String textValue, String tableid) {
        I.amPerforming().textInput().toClear(ByUsing.xpath("//div[@id='" + tableid + "']//input[@type='search']"));
        I.amPerforming().textInput().in(ByUsing.xpath("//div[@id='" + tableid + "']//input[@type='search']"), textValue);
        I.amPerforming().click().on(ByUsing.xpath("//div[@id='" + tableid + "']//span/button/i[@class='fa fa-search'] |" +
                " //div[@id='" + tableid + "']/div//div[@class='quick-search']/div/div/a/i[@class='fa fa-search']"));
    }

    public static void getListOfWebElementAfterSearchOperationPerform(String usage, String ProjectTitleList, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(isListOfWebelementDisplayedAfterSearch(ProjectTitleList, tableid));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(isListOfWebelementDisplayedAfterSearch(ProjectTitleList, tableid));
        }
    }

    private static boolean isListOfWebelementDisplayedAfterSearch(String ProjectTitleList, String tableid) {
        boolean flag = false;
        try {
            List<Elements> elements = I.amPerforming().getElementReference().forListOfElements().of(ByUsing.xpath("//div[@id='" + tableid + "']//span[@class='ng-scope']//field[@field-name='ProjectTitle__c']//span[contains(@title,'" + ProjectTitleList + "')] " +
                    "| //div[@id='" + tableid + "']//span[@class='ng-scope']/span[@title='" + ProjectTitleList + "'] |" +
                    " //div[@id='" + tableid + "']//span[contains(@class,'ng-scope')]/span[@title='" + ProjectTitleList + "'] |" +
                    " //div[@id='" + tableid + "']//tbody/tr/td/span//a[contains(@title,'" + ProjectTitleList + "')] |" +
                    " //div[@id='" + tableid + "']/div//table/tbody/tr/td[@class='tableCell pdf-wrap-td ng-scope']/span/span/span[contains(@title,'" + ProjectTitleList + "')]"));
            if (elements.size() > 0) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public static void selectAscendingOrDescendingOrder(String order, String titleName, String tableid) {
        for (int i = 0; i <= 10; i++) {
            try {
                I.amPerforming().click().withJavaScript(ByUsing.xpath("(//div[@id='" + tableid + "']//descendant::span[text()='" + titleName + "']/parent::span/following::div[@class='dropdown thDropMenu']/button[@class='thDropMenuBtn'])[1]"));
                break;
            } catch (Exception e) {
            }
            I.amPerforming().waitFor().makeThreadSleep(1000);
        }
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='modal flexGridDropdownModal fade in']//ul[@role='menu']/li/a//span[text()='" + order + "']"));
        I.amPerforming().click().on(ByUsing.xpath("//div[@class='modal flexGridDropdownModal fade in']/div/div/div/button[text()='X']"));
    }

    public static void upArrowOrDownArrowIsDisplayed(String usage, String arrow, String columnName, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(arrowDisplayedInRelatedField(arrow, columnName, tableid));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(arrowDisplayedInRelatedField(arrow, columnName, tableid));
        }
    }

    private static boolean arrowDisplayedInRelatedField(String arrow, String columnName, String tableid) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableid + "']//span[text()='" + columnName + "']/parent::span/following::i[@class='ng-scope fa fa-long-arrow-" + arrow + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public static void afterResetTableMessageDisplayed(String usage, String textMessage) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(ResetMessageDisplayed(textMessage));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(ResetMessageDisplayed(textMessage));
        }
    }

    private static boolean ResetMessageDisplayed(String textMessage) {
        boolean flag = false;
        for (int i = 0; i <= 10; i++) {
            try {
                if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//form//div[@class='col-md-12 ng-scope']/div/following-sibling::div/span[text()='" + textMessage + "'] | //form//div[@class='col-md-12 ng-scope']/div/following-sibling::div/span[text()='" + textMessage + "']"))) {
                    flag = true;
                }
                break;
            } catch (Exception e) {
            }
        }
        return flag;
    }

    public static void pageSizeShowAfterPageSetting(String usage, String showingTextValue, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertPageSize(showingTextValue, tableid));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertPageSize(showingTextValue, tableid));
        }
    }

    private static boolean assertPageSize(String showingTextValue, String tableid) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[contains(@id,'" + tableid + "')]/div[@class='row displayFlexCenter']/div/span/span[contains(text(),'" + showingTextValue + "')] |" +
                    " //div[contains(@id,'" + tableid + "')]/div[@class='row ng-scope']/div[contains(@class,'showEntries mobshowEntries')]/span[contains(text(),'" + showingTextValue + "')] |" +
                    " //div[contains(@id,'" + tableid + "')]//div[text()='" + showingTextValue + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertFlexTableFirstOrLastPage(String usage, String FirstOrLastPage, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(userIsOnFirstOrLastPage(FirstOrLastPage, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(userIsOnFirstOrLastPage(FirstOrLastPage, tableId)).isFalse();
        }
    }

    private Boolean userIsOnFirstOrLastPage(String FirstOrLastPage, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//div/span[@class='pull-right table-pager ng-scope']/a[@ng-disabled='true' and @title='" + FirstOrLastPage + "'] |" +
                    " //div[@id='" + tableId + "']//div[@class='table-pager mobtable-pager col-md-6 col-sm-6 col-xs-6 ng-scope']/a[@class='disabledCls' and @title='" + FirstOrLastPage + "']"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void resetMessageDisplayedOrNot(String usage, String message, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(messageDisplayedAfterResetMenu(message, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(messageDisplayedAfterResetMenu(message, tableId)).isFalse();
        }
    }

    private Boolean messageDisplayedAfterResetMenu(String tableId, String message) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/preceding-sibling::div/div//div//div/span[contains(text(),'" + message + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void clickOnListViewAndSelectValue(String tableId, String listId) {
        I.amPerforming().click().on(ByUsing.xpath("//div[contains(@id,'" + tableId + "')]/preceding-sibling::div/div//span[@id='dropdownListView']"));
        I.amPerforming().click().on(ByUsing.xpath("//ul[@class='dropdown-menu dropdown-menu-left']/li/a/span[text()='" + listId + "']"));
    }

    public void iClickOnRefreshResetTableOrDownloadAsPDFinsideMenuIcon(String action, String tableId) {
        I.amPerforming().click().on(ByUsing.xpath("//span[normalize-space(text()='" + tableId + "')]/ancestor::div[@class='row displayFlexCenter ng-scope']//span[@class='dropdown']/a[@title='Menu'] |" +
                " //*[text()='" + tableId + "']/ancestor::div[@class='row displayFlexCenter ng-scope']//span[@class='dropdown']/a[@title='Menu']"));
        I.amPerforming().click().on(ByUsing.xpath("//span[normalize-space(text()='" + tableId + "')]/ancestor::div[@class='row displayFlexCenter ng-scope']//ul/li/a/span[contains(text(),'" + action + "')]"));
    }

    public void listViewListDisplayed(String usage, String listViewName, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(listDisplayedUnderTable(listViewName, tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(listDisplayedUnderTable(listViewName, tableId)).isFalse();
        }
    }

    private Boolean listDisplayedUnderTable(String listViewName, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']/preceding::panel[@table-meta-data='tableMetaData']//font[@style='vertical-align: inherit;' and contains(text(),'" + listViewName + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }

    public void iClickOnCloseButtonWithHeader(String button, String tableHeader) {
        I.amPerforming().click().on(ByUsing.xpath("//p[text()='" + tableHeader + "']/preceding-sibling::button[@aria-label='" + button + "']"));
    }

    public void displayProgramDetailsValueWithField(String usage, String field, String value) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(valueDisplayedUderField(field, value)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(valueDisplayedUderField(field, value)).isFalse();
        }
    }

    private Boolean valueDisplayedUderField(String field, String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='fieldExpectedFunding__c']/dl//span[text()='" + field + "']/ancestor::dt/following-sibling::dd//span[contains(text(),'" + value + "')]"))) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
