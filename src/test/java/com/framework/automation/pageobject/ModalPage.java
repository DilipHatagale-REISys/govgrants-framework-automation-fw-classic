package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;

public class ModalPage extends GovGrantsManager {

    public void clickOnSearchIconInModal(String fieldName) {
        I.amPerforming().click().on(ByUsing.xpath("//input[normalize-space(@title='" + fieldName + "')]/parent::span//span[@class='fa fa-search']"));
    }


    public void validateFieldAndValueAfterModalEnterValue(String usage, String fieldName, String value) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfFieldValueDisplayed(fieldName, value));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfFieldValueDisplayed(fieldName, value));
        }
    }

    private boolean assertIfFieldValueDisplayed(String fieldName, String value) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//*[text()='" + fieldName + "']/ancestor::dt/following-sibling::dd//span[text()='" + value + "'] | //*[text()='" + fieldName + "']//ancestor::dt/following-sibling::dd//*[normalize-space(contains(text(),'" + value + "'))] | //span[text()='" + fieldName + "']/parent::dt//following-sibling::dd//span[contains(text(),'" + value + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void validateStarMarkForRequiredBehavior(String usage, String fieldAPI) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertIfStarMarkDisplayedDisplayed(fieldAPI));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertIfStarMarkDisplayedDisplayed(fieldAPI));
        }
    }

    private boolean assertIfStarMarkDisplayedDisplayed(String fieldAPI) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//span[@customid='" + fieldAPI + "' and @class='requiredField' and text()='*']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void sequenceOfFieldDisplayedInModal(String usage, String fieldAPI, String index, String tableName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(assertSortingOrderInModal(fieldAPI, index, tableName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(assertSortingOrderInModal(fieldAPI, index, tableName));
        }
    }

    private boolean assertSortingOrderInModal(String fieldAPI, String index, String tableName) {
        boolean flag = false;
        try {
            String actualfieldAPI = I.amPerforming().getElementReference().of(By.xpath("(//span[text()='" + tableName + "']/parent::div/following-sibling::div//*[contains(@class,'col-md-4 col-xs-6 col-sm-4  textFieldWrap')]/div)[" + index + "]")).getAttribute("id");
            if (actualfieldAPI.equals(fieldAPI)) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertIfValueIsDisplayedInsideTableInEnhancedTable(String usage, String value, String tableId) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(valueDisplayedInsideEnhanceTable(value, tableId));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(valueDisplayedInsideEnhanceTable(value, tableId));
        }
    }

    private boolean valueDisplayedInsideEnhanceTable(String value, String tableId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableId + "']//ancestor::td//following-sibling::td//*[text()='" + value + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void actionDisplayedOrNotInGivenTableWithTitle(String usage, String action, String titlename, String tableid) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(actionsDisplayedWithTitle(action, titlename, tableid));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(actionsDisplayedWithTitle(action, titlename, tableid));
        }
    }

    private boolean actionsDisplayedWithTitle(String action, String titlename, String tableid) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + tableid + "']//tbody//tr//td//*[@title='" + titlename + "']/ancestor::td//following-sibling::td//*[@title='" + action + "']"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void clickOncolumnHeader(String columnName, String tableId) {
        I.amPerforming().click().withJavaScript(By.xpath("//div[@id='" + tableId + "']//span[@ng-click and .//span[@class='ng-binding' and @title='" + columnName + "']]"));
    }

    public void assertUpArrowOrDownArrowIsDisplayed(String usage, String columnname, String arrow) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(afterClickColumnUpArrowOrDownArrowIsDisplayed(columnname, arrow));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(afterClickColumnUpArrowOrDownArrowIsDisplayed(columnname, arrow));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(afterClickColumnUpArrowOrDownArrowIsDisplayed(columnname, arrow)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(afterClickColumnUpArrowOrDownArrowIsDisplayed(columnname, arrow)).isFalse();
        }
    }

    private boolean afterClickColumnUpArrowOrDownArrowIsDisplayed(String columnname, String arrow) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//th[.//span[text()='" + columnname + "']]//span[contains(@class, '" + arrow + "')] | //th[.//span[text()='" + columnname + "']]//i[contains(@class,'" + arrow + "')]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }

    public void assertColumnNameIsClickable(String usage, String columnname, String tableName) {
        if (usage.equalsIgnoreCase("see")) {
            Assert.assertTrue(clickableColumnIsDisplayed(columnname, tableName));
        } else if (usage.equalsIgnoreCase("do not see")) {
            Assert.assertFalse(clickableColumnIsDisplayed(columnname, tableName));
        } else if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(clickableColumnIsDisplayed(columnname, tableName)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(clickableColumnIsDisplayed(columnname, tableName)).isFalse();
        }
    }

    private boolean clickableColumnIsDisplayed(String columnname, String tableName) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableName + "']//span[@ng-click and .//span[@class='ng-binding' and @title='" + columnname + "']]"))) {
                flag = true;
            }
        } catch (Exception e) {
        }
        return flag;
    }
}
