package com.framework.automation.payloads;

import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.SetUpConfiguration;
import com.google.gson.JsonObject;
import com.jayway.restassured.response.Response;

public class ApiUtilities {
    JsonObject sObjectConfig;
    RestfulWebServices apiCall = new RestfulWebServices();

    /**
     * get Id based on component api and field name
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    public String getComponentCoreFieldId(String ComponentAPI, String filterClause) {
        Response response = apiCall.postCall(getPayLaodForIdRetrieval(ComponentAPI, filterClause), null,
                SetUpConfiguration.defaultRetrieveEndPoint, "Authorization", "Bearer " + ProjectWebServices.tokenString,
                null);
        String[] splittedStringForId = response.body().asString().split(":");
        String iD = splittedStringForId[4].substring(2, 20);
        return iD;
    }

    /**
     * create payload for getting ID API call
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    private JsonObject getPayLaodForIdRetrieval(String ComponentAPI, String filterClause) {
        sObjectConfig = new JsonObject();
        sObjectConfig.addProperty("sObjectAPIName", ComponentAPI);
        sObjectConfig.addProperty("fields", "Id");
        sObjectConfig.addProperty("filterClause", filterClause);
        System.out.println("json is " + sObjectConfig);
        return sObjectConfig;
    }

    /**
     * 
     * @param componentName
     * @param ComponentCoreFieldName
     * @param name
     * @return
     */
    public String getFilterClause(String componentName, String ComponentCoreFieldName, String fieldName, String value) {
        String filterClause = null;
        switch (componentName.toUpperCase()) {
        case "GENERAL":
            filterClause = genericParameterFilter(ComponentCoreFieldName);
            break;
        case "ACCORDIAN HEADER":
            filterClause = String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;
        case "FLEX TABLE LIST":
            filterClause = String.valueOf(SObjectAPIs.GNT__FlexTableConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;
        case "ACCORDIAN CONTENT":
            filterClause = String.valueOf(SObjectAPIs.GNT__AccordionSubHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__AccordionHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
        }
        return filterClause;
    }

    /**
     * setup configuration for general
     * @param ComponentCoreFieldName
     * @return
     */
    private String genericParameterFilter(String ComponentCoreFieldName) {
        return "Name=" + "'" + ComponentCoreFieldName + "'";
    }

}
