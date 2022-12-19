package com.framework.automation.pageobject;

import java.util.List;

public class ApprovalHistoryComponentPage {
    public void elementIsNotDisplayedOnUI(List allOptions)
    {
        boolean testResult = isNotDisplayed(allOptions);
        System.out.println("testResulttestResult"+testResult);
    }

    public boolean isNotDisplayed(List allOptions) {
        boolean result = true;
        try
        {
            if(allOptions.size()>0)
            {
                result=false;
            }else
            {
                result=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
