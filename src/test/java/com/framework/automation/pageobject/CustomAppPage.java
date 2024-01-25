package com.framework.automation.pageobject;

import com.framework.automation.projectmanager.GovGrantsManager;
import com.helperPackage.actionsfactory.api.ByUsing;
import com.helperPackage.objects.Elements;
import com.helperPackage.register.I;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

public class CustomAppPage extends GovGrantsManager{
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
            System.out.println("-------------------");
            if (I.amPerforming().getElementReference().of(ByUsing.xpath("(//div/ul/li[contains(@class,'dropdown appDropdown')]/ul/li)[" + position + "]")).getText().contains(dropDownItem)) {
                flag = true;
            }
        } catch (org.openqa.selenium.NoSuchElementException e) {
        }
        return flag;
    }
}
