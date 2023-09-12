package com.framework.automation.pageobject;

import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;

public class CustomAppPage {
    public void dropDownOptionDisplayed(String usage, String dropDownItem, String position) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(dropDownItemDisplayed(dropDownItem, position)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(dropDownItemDisplayed(dropDownItem, position)).isFalse();
        }
    }

    private Boolean dropDownItemDisplayed(String dropDownItem, String position) {
        boolean flag = false;
        try {
            if (I.amPerforming().getElementReference().of(ByUsing.xpath("(//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li)[" + position + "]")).getText().contains("" + dropDownItem + "")) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
