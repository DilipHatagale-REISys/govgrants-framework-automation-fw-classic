package com.framework.automation.projectmanager;

import com.framework.automation.payloads.FlexTable;
import com.framework.automation.payloads.SideBar;

public class SetUpConfiguration {
    public static String defaultRetrieveEndPoint = "https://ggptest5-dev-ed.my.salesforce.com/services/apexrest/frameworkAPIRetrieve";
    /**
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String getConfigJson(String componentName, String fieldLabel, String value, String filterClause) {
        String stringPayload = null;
        switch (componentName.toUpperCase()) {
        case "PHASES":
            stringPayload = new SideBar().getPhasesFieldConfig(fieldLabel, value, filterClause);
            break;
        case "ACCORDIAN HEADER":
            stringPayload = new SideBar().setAccordianHeaderConfig(fieldLabel, value, filterClause);
            break;
        case "ACCORDIAN CONTENT":
            stringPayload = new SideBar().setAccordianContentFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX TABLE":
            stringPayload = new FlexTable().setFlexTableFieldConfig(fieldLabel, value, filterClause);
            break;
        case "FLEX TABLE LIST":
            stringPayload = new FlexTable().setFlexTableListFieldConfig(fieldLabel, value, filterClause);
            break;
        }
        System.out.println("final payload is " + stringPayload);
        return stringPayload;
    }

}
