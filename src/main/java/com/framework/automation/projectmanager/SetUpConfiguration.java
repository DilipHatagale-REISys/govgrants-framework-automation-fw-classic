package com.framework.automation.projectmanager;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.payloads.ApiUtilities;
import com.framework.automation.payloads.FlexTable;
import com.framework.automation.payloads.SideBar;
import com.google.gson.JsonObject;

public class SetUpConfiguration {
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
