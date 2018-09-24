package com.framework.automation.payloads;

import java.util.ArrayList;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.objects.IdBucket;
import com.framework.automation.projectmanager.ProjectWebServices;
import com.framework.automation.projectmanager.SetUpConfiguration;
import com.google.gson.JsonObject;
import com.jayway.restassured.response.Response;

public class ApiUtilities {
    JsonObject sObjectConfig;
    RestfulWebServices apiCall = new RestfulWebServices();
    public static ArrayList<IdBucket> storeAllIds=new ArrayList<IdBucket>();

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
        storeAllIds.add(new IdBucket(iD));
        return iD;
    }

    /**
     * get Id based on component api and field name for context objects
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    public String getComponentCoreFieldIdForContextObjects(String ComponentAPI, String contextSobject,
            String filterClause) {
        Response response = apiCall.postCall(
                getPayLaodForIdRetrievalForContextObjects(ComponentAPI, contextSobject, filterClause), null,
                SetUpConfiguration.defaultRetrieveEndPoint, "Authorization", "Bearer " + ProjectWebServices.tokenString,
                null);
        String[] splittedStringForId = response.body().asString().split(":");
        String iD = splittedStringForId[4].substring(2, 20);
        storeAllIds.add(new IdBucket(iD));
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
     * create payload for getting ID API call
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    private JsonObject getPayLaodForIdRetrievalForContextObjects(String ComponentAPI, String contextSobject,
            String filterClause) {
        sObjectConfig = new JsonObject();
        sObjectConfig.addProperty("sObjectAPIName", ComponentAPI);
        sObjectConfig.addProperty("fields", contextSobject);
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
        case "ACCORDIAN CONTENT":
            filterClause = String.valueOf(SObjectAPIs.GNT__AccordionSubHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__AccordionHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;
        case "FLEX TABLE LIST":
            filterClause = String.valueOf(SObjectAPIs.GNT__FlexTableConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;
        case "FLEX TABLE ACTION":
            filterClause = fieldName + "=" + "'" + value + "'" + " and" + " "
                    + String.valueOf(SObjectAPIs.GNT__DataTableConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "'";
            break;
        case "PAGE LAYOUT ACTION":
            filterClause = fieldName + "=" + "'" + value + "'" + " and" + " "
                    + String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "'";
            break;
        case "FIELD SPECIFIC":
            filterClause = fieldName + "=" + "'" + value;
            break;
        case "APPROVAL DECISION ACTION":
            filterClause = fieldName + "=" + "'" + value + "'" + " and" + " "
                    + String.valueOf(SObjectAPIs.GNT__CustomAppConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "'";
            break;
        case "PROGRAM":
            filterClause = String.valueOf(SObjectAPIs.ProgramName__c) + "=" + "'" + ComponentCoreFieldName + "'";
            break;
        case "TASK ACTION":
            filterClause = String.valueOf(SObjectAPIs.GNT__TaskAction__c) + "=" + "'" + ComponentCoreFieldName + "'";
            break;
        case "STEP PROGRESSBAR DETAIL":
            filterClause = String.valueOf(SObjectAPIs.GNT__PicklistValue__c) + "=" + "'" + value + "'" + " and" + " "
                    + String.valueOf(SObjectAPIs.GNT__ProgressbarHeaderConfig__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__GroupName__c) + "=" + "'" + ComponentCoreFieldName + "'";
            break;
        case "CHARTS CONFIG":
            filterClause = String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;
        case "CHARTS DETAILS CONFIG":
            filterClause = String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c) + "."
                    + String.valueOf(SObjectAPIs.GNT__ChartConfig__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    + "' and" + " " + fieldName + "=" + "'" + value + "'";
            break;

        }
        return filterClause;
    }

    /**
     * setup configuration for general
     * 
     * @param ComponentCoreFieldName
     * @return
     */
    private String genericParameterFilter(String ComponentCoreFieldName) {
        return "Name=" + "'" + ComponentCoreFieldName + "'";
    }

    public static ArrayList<IdBucket> getTheId() {
        return storeAllIds;
    }
}
