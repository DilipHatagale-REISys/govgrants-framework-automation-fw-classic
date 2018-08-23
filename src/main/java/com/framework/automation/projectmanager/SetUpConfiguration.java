package com.framework.automation.projectmanager;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.payloads.ApiUtilities;
import com.framework.automation.payloads.FlexTable;
import com.framework.automation.payloads.SObjectAPIs;
import com.framework.automation.payloads.SideBar;
import com.google.gson.JsonObject;
import com.jayway.restassured.response.Response;

public class SetUpConfiguration {
    RestfulWebServices apiCall = new RestfulWebServices();
    ApiUtilities apiUtil;
    JsonObject sObjectConfig;
    JsonObject fieldConfig;
    private static String endPoint = EnvironmentFetcher.environment;
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
        case "FLEX TABLE LIST":
            stringPayload = new FlexTable().setFlexTableListFieldConfig(fieldLabel, value, filterClause);
            break;
        }
        System.out.println("payoad is " + stringPayload);
        return stringPayload;
    }

}
